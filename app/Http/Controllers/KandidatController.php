<?php

namespace App\Http\Controllers;

use App\Models\Kandidat;
use App\Models\Polling;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class KandidatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return abort(403, 'Anda tidak punya akses kehalaman ini');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $polling = polling::where('slug', $request->polling)->get();
        $kandidat = count(Kandidat::where('polling_id', $polling[0]->id)->get());
        return view('author-polling.v-newkandidat', [
            'polling' => $polling,
            'kandidat' => $kandidat + 1
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title_kandidat' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'body' => 'required',
            'kandidat' => 'required',
            'polling_id' => 'required',
            'img_kandidat' => 'required|image|file',
        ]);
        if ($request->img_kandidat) {
            $validatedData['img_kandidat'] = $request->img_kandidat->store('img/cover-kandidat');
        }

        activity()->log('Created new kandidat polling');
        Kandidat::create($validatedData);

        return redirect('/mypolling/pollings')->with('success', 'New polling kandidat has been added !');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kandidat  $kandidat
     * @return \Illuminate\Http\Response
     */
    public function show(Kandidat $kandidat)
    {
        return view('author-polling.v-showkandidat', [
            'kandidat' => $kandidat,
            'polling' => polling::where('id', $kandidat->polling_id)->get()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kandidat  $kandidat
     * @return \Illuminate\Http\Response
     */
    public function edit(Kandidat $kandidat)
    {
        return view('author-polling.v-editKandidat', [
            'kandidat' => $kandidat,
            'polling' => Polling::where('id', $kandidat->polling_id)->get(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Kandidat  $kandidat
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Kandidat $kandidat)
    {
        //
        $validatedData = $request->validate([
            'title_kandidat' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'body' => 'required',
            'img_kandidat' => 'image|file',
        ]);
        if ($request->img_kandidat) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['img_kandidat'] = $request->img_kandidat->store('img/cover-kandidat');
        }

        Kandidat::where('id', $kandidat->id)
            ->update($validatedData);

        activity()->log('Edit a kandidat polling');
        return redirect('/mypolling/kandidat/' . $validatedData['slug'])->with('success', 'kandidat has been edited !');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kandidat  $kandidat
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kandidat $kandidat)
    {
        if ($kandidat->img_kandidat) {
            Storage::delete($kandidat->img_kandidat);
        }
        Kandidat::destroy($kandidat->id);

        activity()->log('Deleted a kandidat with title ' . $kandidat->title_kandidat);
        return redirect('/mypolling/pollings')->with('success', 'A kandidat has been deleted!!');
    }
    public function createSlug(Request $request)
    {
        $slug =  SlugService::createSlug(Kandidat::class, 'slug', $request->title_kandidat);
        return response()->json(['slug' => $slug]);
    }
}
