<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\User;
use App\Product;
use App\Item;
use App\Todo;
use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->email,
    ];
});

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'price' => rand(0, 300),
        'description'=>$faker->text,
    ];
});

$factory->define(Item::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'price' => rand(0, 200),
        'description'=>$faker->text,
    ];
});

$factory->define(User::class, function (Faker $faker) {
    return [
        'first_name' => $faker->name,
        'last_name' => $faker->name,
        'user_name' => $faker->name,
        'password' => $faker->name,
        'email' => $faker->email,
        'mobile_no' => rand(80000000000, 9999999999),
        'gender' => $faker->randomElement([
                    'Male',
                    'Female'
                ]),
        'birthday' => $faker->date,
    ];
});


$factory->define(Todo::class, function (Faker $faker) {
    $users = User::all()->pluck('id')->toArray();
    return [
        'name' => $faker->name,
        'description' => $faker->text,
        'category'=>$faker->randomElement([
                    'category_1',
                    'category_2'
                ]),
        'status' => $faker->randomElement([
                    'Completed',
                    'Snoozed',
                    'Overdue',
                    'Pending',
                ]),
        'user_id' => $faker->randomElement($users),
    ];
});
