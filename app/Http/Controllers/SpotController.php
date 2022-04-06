<?php

namespace App\Http\Controllers;

use App\Models\Spot;
use Illuminate\Http\Request;
use Faker\Generator;
use Illuminate\Container\Container;

class SpotController extends Controller
{

    public function generate()
    {
        $faker = Container::getInstance()->make(Generator::class);

        $arr = [
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0],
            [0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
            [0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
            [0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
            [0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        ];
        $val = [];
        $models = [
            "Mahindra Thar",
            "Mahindra XUV700",
            "Mahindra Scorpio",
            "Mahindra Bolero",
            "Mahindra XUV300",
            "Mahindra XUV300 Electric",
        ];
        $chassis = [
            "1N6XXXXXXXX303918",
            "1C4XXXXXXXX521742",
            "1N6XXXXXXXX303918",
            "1C4XXXXXXXX521742",
            "1N6XXXXXXXX303918",
            "1C4XXXXXXXX521742",
        ];

        $parked_by = [
            "Rahul",
            "Ketan",
            "Darshan",
            "Ninad",
            "Yash",
            "Shivesh",
        ];
        $i = 0;
        foreach ($arr as $y => $ar) {
            foreach ($ar as $x => $a) {
                if ($y == 0 || $x == 22 || $x == 0 || $y == 8 || $x == 11 || $y == 4) {
                    $val[] = ['position' => ++$i, 'is_occupied' => "$a", 'modal' => '', 'chassis_no' => '', 'parked_by' => '', 'parked_at' => null, 'pos_x' => $x, 'pos_y' => $y, 'for' => 'road'];
                } else {
                    $val[] = ['position' => ++$i, 'is_occupied' => "$a", 'modal' => $models[rand(0, 5)], 'chassis_no' => $chassis[rand(0, 5)], 'parked_by' => $parked_by[rand(0, 5)], 'parked_at' => $faker->dateTimeBetween('-30 days', '+30 days'), 'pos_x' => $x, 'pos_y' => $y, 'for' => 'parking'];
                }
            }
        }

        $data = Spot::insert($val);

        dd($data);
    }


    public function home()
    {
        $grid = Spot::all();

        $occupied = Spot::where('is_occupied', 1)->where('for', 'parking')->count();
        $total = Spot::where('for', 'parking')->count();

        $grid = array_chunk($grid->toArray(), 23);

        return view('home', compact('grid', 'occupied', 'total'));
    }
    public function getGrid()
    {
        $grid = Spot::all();

        $grid = array_chunk($grid->toArray(), 23);

        return response($grid);
    }

    public function control()
    {
        $grid = Spot::all();

        $occupied = Spot::where('is_occupied', 1)->where('for', 'parking')->count();
        $total = Spot::where('for', 'parking')->count();

        $grid = array_chunk($grid->toArray(), 23);

        return view('home-control', compact('grid', 'occupied', 'total'));
    }

    public function delete(Request $request)
    {
        return  $grid = Spot::find($request->id)->update([
            'is_occupied' => "0",
            'modal' => '',
            'chassis_no' => '',
            'parked_by' => '',
        ]);
    }
    public function add(Request $request)
    {
        $models = [
            "Mahindra Thar",
            "Mahindra XUV700",
            "Mahindra Scorpio",
            "Mahindra Bolero",
            "Mahindra XUV300",
            "Mahindra XUV300 Electric",
        ];
        $chassis = [
            "1N6XXXXXXXX303918",
            "1C4XXXXXXXX521742",
            "1N6XXXXXXXX303918",
            "1C4XXXXXXXX521742",
            "1N6XXXXXXXX303918",
            "1C4XXXXXXXX521742",
        ];

        $parked_by = [
            "Rahul",
            "Ketan",
            "Darshan",
            "Ninad",
            "Yash",
            "Shivesh",
        ];

        $faker = Container::getInstance()->make(Generator::class);
        return  $grid = Spot::find($request->id)->update([
            'is_occupied' => '1',
            'modal' => $models[rand(0, 5)],
            'chassis_no' => $chassis[rand(0, 5)],
            'parked_by' => $parked_by[rand(0, 5)],
            'parked_at' => $faker->dateTimeBetween('-30 days', '+30 days'),
        ]);
    }


    public function availableSpot()
    {
        $spot = Spot::where('for', 'parking')->where('is_occupied', '0')->inRandomOrder()->first();

        return $spot;
    }
}
