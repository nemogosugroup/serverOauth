<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function listNews()
    {
        $listNews = array(
            array(
                'id'=>1,
                'title' => 'VN GAMING FOUNDERS CONNECT: EVENT to connect the top game creators and distributors in Vietnam',
                'article_summary'=>"Organized by the Google Cloud team, the VN Gaming Founders Connect event is an opportunity for game developers and game publishers to discuss the future and development direction of this fertile industry in the Vietnamese market. .",
                'image' => 'https://gosucorp.vn/static/uploads/announement/vn-gaming-founders-connect/hug03485.jpg',
                'link_news'=>'https://gosucorp.vn/en/news/activities/vn-gaming-founders-connect-su-kien-ket-noi-nhung-nha-sang-tao-va-phat-hanh-game-hang-dau-tai-viet-nam'
            ),
            array(
                'id'=>2,
                'title' => 'CUU DUONG Truyen Ky 2: "The grower\'s house" exclusively for Vietnamese players',
                'article_summary'=>'Cuu Duong Truyen Ky 2 officially launched on June 9, promising to bring the most exciting experiences to martial arts enthusiasts, gradually affirming GOSU\'s position in building and developing titles. game "plant house". In addition, the offline Cuu Duong Tuong Phung that took place on June 3 has attracted the participation of guests and the gamer community. The event includes many activities such as game experience, talkshow...',
                'image' => 'https://gosucorp.vn/static/uploads/activities/9d2/1.jpg',
                'link_news'=>'https://gosucorp.vn/en/news/game/cuu-duong-truyen-ky-2-cua-nha-trong-doc-quyen-vi-nguoi-choi-viet'
            ),
            array(
                'id'=>3,
                'title' => 'VIETNAM HAS ITS FIRST E-SPORTS GOLD MEDAL AT THE 32ND SEA GAMES',
                'article_summary'=>'The Vietnamese CrossFire team had successfully defended the championship after defeating the Indonesian in the final on the afternoon of May 9.',
                'image' => 'https://gosucorp.vn/static/uploads/activities/gosu-khac/esport-top.jpg',
                'link_news'=>'https://gosucorp.vn/en/news/announcement/viet-nam-co-huy-chuong-vang-esport-dau-tien-tai-sea-games-32'
            ),
            array(
                'id'=>4,
                'title' => 'ACTIVITIES AT THE VIETNAM GAME DAY EXHIBITION AREA',
                'article_summary'=>'More than 20 booths from technology companies, game manufacturers bring a series of gaming activities, experience receiving gifts, finding job opportunities on April 1 - 2.',
                'image' => 'https://gosucorp.vn/static/uploads/activities/vietnam-gameverse-2023/topnews.jpg',
                'link_news'=>'https://gosucorp.vn/en/news/activities/loat-hoat-dong-tai-khu-trien-lam-ngay-hoi-game-viet-nam'
            )
        );
        $data = [
            'status' => 200,
            'success' => true,
            'message' => 'success',
            'data' => $listNews
        ];
    
        return response()->json($data);
    }
}
