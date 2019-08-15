<?php

namespace App\Http\Controllers;

use App\Articles;
use App\Pages;
use App\Portfolio;
use App\Services;
use App\Stages;
use App\Team;
use App\WorkType;
use Illuminate\Http\Request;
use Mail;

class PageController extends Controller
{
    public function execute($page_name, Request $request)
    {

        //        Database request
        if(!Pages::where('page_alias', $page_name)->first() !== null) {
            $pages = Pages::where('page_alias', $page_name)->first();
        }
        else {
            abort(404);
        }
        $articles = Articles::all();
        $portfolio = Portfolio::all();
        $services = Services::all();
        $stages = Stages::all();
        $team = Team::all();
        $work_type = WorkType::all();
        $service_types_aliases = $services->pluck('service_category_alias')->unique();
        $service_types_names = $services->pluck('service_category')->unique();

        $service_names = Services::pluck('service_name');
        $service_aliases = Services::pluck('service_alias');
        $check = 0;

        if ($pages === null) {
            abort(404);
        } else {
            $page_alias = $pages->page_alias;

            if ($request->isMethod('POST')) {
                $data = $request->all();

                foreach ($data as $k => $v) {
                    if ($k === 'service_type') {
                        $input = explode('|', $v);

                        $value = $input[0];
                        $selected = $input[1];

                        $check = 1;
                    }
                }

                if ($check === 1) {
                    $array = [
                        'service_names' => $service_names,
                        'service_aliases' => $service_aliases,
                        'value' => $value,
                        'selected' => $selected,
                        'articles' => $articles,
                        'pages' => $pages,
                        'portfolio' => $portfolio,
                        'services' => $services,
                        'service_types_aliases' => $service_types_aliases,
                        'service_types_names' => $service_types_names,
                        'stages' => $stages,
                        'team' => $team,
                        'work_type' => $work_type
                    ];
                } else {
                    $guest_service = htmlspecialchars(trim($data['guest_service']));
                    $guest_name = htmlspecialchars(trim($data['guest_name']));
                    $guest_phone = htmlspecialchars(trim($data['guest_phone']));
                    $guest_mail = htmlspecialchars(trim($data['guest_mail']));
                    $guest_message = htmlspecialchars(trim($data['guest_message']));

                    $array = [
                        'from_email' => 'assist@brightandeasy.ru',
                        'from_name' => $guest_name,
                        'to_email' => 'assist@brightandeasy.ru',
                        'guest_name' => $guest_name,
                        'guest_email' => $guest_mail,
                        'guest_service' => $guest_service,
                        'subject' => 'Запрос пользователя по теме: ' . $guest_service,
                        'guest_message' => $guest_message,
                        'guest_phone' => $guest_phone
                    ];

                    $result = Mail::send('layouts.mail', ['array' => $array], function ($message) use ($array) {
                        $message->from($array['from_email'], $array['from_name']);
                        $message->to($array['to_email'])->subject($array['subject']);
                    });

                    return redirect('/thanks');
                }
            } else {
                $array = [
                    'service_names' => $service_names,
                    'service_aliases' => $service_aliases,
                    'articles' => $articles,
                    'pages' => $pages,
                    'portfolio' => $portfolio,
                    'services' => $services,
                    'service_types_aliases' => $service_types_aliases,
                    'service_types_names' => $service_types_names,
                    'stages' => $stages,
                    'team' => $team,
                    'work_type' => $work_type
                ];
            }

            $view = "pages." . $page_alias;

            return view($view, $array);
        }
    }
}
