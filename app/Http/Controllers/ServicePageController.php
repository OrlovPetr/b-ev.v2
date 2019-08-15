<?php

namespace App\Http\Controllers;

use App\Pages;
use App\Services;
use Illuminate\Http\Request;

class ServicePageController extends Controller
{
    public function execute($page) {

        $service = Services::where('service_alias', $page)->first();
        if(Pages::where('page_alias', $page)->first() !== null) {
            $pages = Pages::where('page_alias', $page)->first();
        }
        else {
            abort(404);
        }
        $clients = explode('|', $service->service_clients);
        $differences = explode('|', $service->service_differences);

        $array = [
            'service' => $service,
            'pages' => $pages,
            'clients' => $clients,
            'differences' => $differences
        ];

        return view('pages.service', $array);
    }
}
