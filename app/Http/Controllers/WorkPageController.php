<?php

namespace App\Http\Controllers;

use App\Pages;
use App\Portfolio;
use Illuminate\Http\Request;

class WorkPageController extends Controller
{
    public function execute($page)
    {
        $portfolio = Portfolio::where('work_alias', $page)->first();
        if(Pages::where('page_alias', $page)->first() !== null) {
            $pages = Pages::where('page_alias', $page)->first();
        }
        else {
            abort(404);
        }
        $techs = Portfolio::where('work_alias', $page)->value('work_technologies');
        $whatwedo = Portfolio::where('work_alias', $page)->value('work_whatwedo');

        $techs = explode("|", $techs);
        $whatwedo = explode("|", $whatwedo);

        $array = [
            'portfolio' => $portfolio,
            'pages' => $pages,
            'techs' => $techs,
            'whatwedo' => $whatwedo
        ];

        return view('pages.work', $array);
    }
}
