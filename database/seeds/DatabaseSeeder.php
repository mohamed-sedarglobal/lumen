<?php

use Illuminate\Database\Seeder;
use App\Product;
use App\Item;
use App\User;
use App\Todo;
class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //$this->call('UsersTableSeeder');

        $products = factory(Product::class, 10)->create();
        $items = factory(Item::class, 10)->create();
        $users = factory(User::class, 10)->create();
        $todos = factory(Todo::class, 10)->create();
    }
}
