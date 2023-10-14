<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Ads;
use App\Models\User;
use App\Models\UserSuggestion;
use App\Models\Vote;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
class PageController extends Controller
{

    public function vote(Request $request)
    {
        // dd($request);
        $validatedData =[
            'user_id' => $request->user_id,
            'post_id' => $request->post_id,
            'polling_id' => $request->polling_id,
        ];
        Vote::create($validatedData);
        return redirect('/polling/'.$request->slug_polling)->with('success', 'Hasil Voting sudah terinput !');
    }

}
