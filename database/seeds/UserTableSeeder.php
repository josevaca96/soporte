<?php

use Illuminate\Database\Seeder;
use\App\User;
class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $userAmin = User::create([
            'name'    => 'JOSE ANDRES',
            'email'   => 'soporte.joseandres@email.com',
            'password' => bcrypt('33656333365633')
        ]);
    }
}
