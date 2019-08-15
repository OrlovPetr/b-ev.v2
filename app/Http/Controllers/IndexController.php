<?php

namespace App\Http\Controllers;

use App\WorkType;
use Illuminate\Http\Request;
use App\Pages;
use App\Portfolio;

class IndexController extends Controller
{
    public function execute()
    {

//        Database request
        $pages = Pages::where('page_alias', 'index')->first();
        $portfolio = Portfolio::all();
        $work_type = WorkType::all();

        return view('pages.index', [
            'pages' => $pages,
            'portfolio' => $portfolio,
            'work_type' => $work_type
        ]);
    }
}
