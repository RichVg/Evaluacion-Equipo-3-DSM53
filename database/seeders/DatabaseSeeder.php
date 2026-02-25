<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ComidaEquipo3;

class DatabaseSeeder extends Seeder
{

    public function run(): void
    {

        ComidaEquipo3::factory(10)->create();
    }
}
