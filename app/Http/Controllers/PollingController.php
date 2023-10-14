<?php

namespace App\Http\Controllers;

use App\Models\Kandidat;
use App\Models\Polling;
use App\Models\Vote;
use Illuminate\Support\Facades\Auth;

class PollingController extends Controller
{
    public function index()
    {
        return view('reader.v-polling', [
            'pollings' => Polling::where('status', 1)->latest()->paginate(10),
        ]);
    }

    public function allChapter(polling $polling)
    {
        $dataKandidat = Kandidat::where('polling_id', $polling->id)->get();
        $totalKandidat = count($dataKandidat);
        $i = 0;
        foreach ($dataKandidat as $kandidat) {
            $voteKandidat[$i] = count(Vote::where('post_id', $kandidat->id)->get());
            $i++;
        }

        // dd($voteKandidat);
        return view('reader.v-allKandidat', [
            'polling' => $polling,
            'voteKandidat' => $voteKandidat,
            'totalKandidat' => $totalKandidat,
            'kandidats' => $polling->kandidat()->paginate(10)
        ]);
    }
    public function readChapter(Kandidat $kandidat)
    {
        $pollingId = $kandidat->polling_id;
        $chapter = $kandidat->chapter;

        $kandidat = Kandidat::where('slug', $kandidat->slug)->with('polling')->first();

        $lastChapter = count(Kandidat::where('polling_id', $pollingId)->get());

        if ($chapter != 1) {
            $previousChapter = Kandidat::select('slug')->where('polling_id', $pollingId)->where('chapter', $chapter - 1)->first();
        } else {
            $previousChapter = false;
        }
        if ($chapter != $lastChapter) {
            $nextChapter = Kandidat::select('slug')->where('polling_id', $pollingId)->where('chapter', $chapter + 1)->first();
        } else {
            $nextChapter = false;
        }

        if (Auth::check()) {
            $voted = Vote::where('user_id', auth()->user()->id)->where('polling_id', $pollingId)->get();

            if (count($voted) > 0) {
                $voted = false;
            } else {
                $voted = true;
            }
        } else {
            $voted = false;
        }
        $data['reader'] = $kandidat->reader + 1;
        Kandidat::where('id', $kandidat->id)->update($data);

        return view('reader.v-readKandidat', [
            'voted' => $voted,
            'kandidat' => $kandidat,
            'nextChapter' => $nextChapter,
            'previousChapter' => $previousChapter,
        ]);
    }
}
