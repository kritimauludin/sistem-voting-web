<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Kandidat;
use App\Models\Polling;
use App\Models\Vote;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class MyPollingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $polling = Polling::with(['kandidat'])->where('author_id', auth()->user()->id)->get();
        $reader[0] = 0;
        for ($i = 0; $i < count($polling); $i++) {
            $reader[$i] = 0;
            for ($j = 0; $j < count($polling[$i]->kandidat); $j++) {
                $reader[$i] = $polling[$i]->kandidat[$j]->reader + $reader[$i];
            }
        }
        return view('author-polling.v-myPolling', [
            'pollings' => $polling,
            'readers' => $reader
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('author-polling.v-createPolling');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);
        $validatedData = $request->validate([
            'title_polling' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'img_cover_polling' => 'required|image|file',
        ]);
        if ($request->img_cover_polling) {
            $validatedData['img_cover_polling'] = $request->img_cover_polling->store('img/cover-polling');
        }
        if (auth()->user()->role_id == 5) {
            $validatedData['status'] = 0;
        }
        $validatedData['author_id'] = auth()->user()->id;
        $validatedData['excerpt_polling'] = Str::limit(strip_tags($request->excerpt_polling), 200, '...');

        activity()->log('Created new title Polling');
        Polling::create($validatedData);

        return redirect('/mypolling/pollings')->with('success', 'New Polling title has been added !');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Polling  $polling
     * @return \Illuminate\Http\Response
     */
    public function show(Polling $polling)
    {
        return view('author-polling.v-showPolling', [
            'polling' => $polling,
            'kandidats' => Kandidat::where('polling_id', $polling->id)->paginate(10)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Polling  $polling
     * @return \Illuminate\Http\Response
     */
    public function edit(Polling $polling)
    {
        return view('author-polling.v-editPolling');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Polling  $polling
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Polling $polling)
    {
        $rules = [
            'title_polling' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'img_cover_polling' => 'image|file',
        ];
        if ($request->slug != $polling->slug) {
            $rules['slug'] = 'required|unique:posts';
        }

        $validatedData = $request->validate($rules);

        if ($request->img_cover_polling) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['img_cover_polling'] = $request->img_cover_polling->store('img/cover-polling');
        }
        $validatedData['author_id'] = auth()->user()->id;
        $validatedData['excerpt_polling'] = Str::limit(strip_tags($request->excerpt_polling), 200, '...');

        Polling::where('id', $polling->id)
            ->update($validatedData);
        activity()->log('Edited a Polling with title ' . $polling->title);

        return redirect('/mypolling/pollings')->with('success', 'Polling has been edited !');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Polling  $polling
     * @return \Illuminate\Http\Response
     */
    public function destroy(Polling $polling)
    {
        if ($polling->img_cover_polling) {
            Storage::delete($polling->img_cover_polling);
        }
        Polling::destroy($polling->id);
        Kandidat::where('Polling_id', $polling->id)->delete();
        activity()->log('Deleted a Polling with title ' . $polling->title_polling);
        return redirect('/mypolling/pollings')->with('success', 'Polling has been deleted!!');
    }
    public function createSlug(Request $request)
    {
        $slug =  SlugService::createSlug(Polling::class, 'slug', $request->title_polling);
        return response()->json(['slug' => $slug]);
    }

    public function realtimeData(){
        $votes = Vote::with(['user', 'polling', 'kandidat'])->orderBy('created_at', 'DESC')->get();
        $realtimeData = [];
        foreach($votes as $index=>$vote){
            $realtimeData[$index] = [
                'title_polling'     => $vote->polling[0]->title_polling,
                'title_kandidat'    => $vote->kandidat[0]->title_kandidat,
                'username'          => $vote->user[0]->username,
                'email'             => $vote->user[0]->email,
                'created_at'        => "$vote->created_at"
            ];
        }

        return view('author-polling.v-RealtimeVote', [
            'realtimeData' => $realtimeData
        ]);
    }
}
