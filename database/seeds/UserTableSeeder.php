<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
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
        $userSupervisor = User::create([
            'name'    => 'Supervisor1',
            'email'   => 'soporte.supervisor1@email.com',
            'password' => bcrypt('Celina0.124')
        ]);
        $role_super_admin = Role::create(['name' => 'super_admin']);
        $role_supervisor=Role::create(['name' => 'supervisor']);
        $userAmin->assignRole($role_super_admin);
        $userSupervisor->assignRole($role_supervisor);
        
    }
}
