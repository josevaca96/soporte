<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // empresas
            Permission::create([
                'name'        => 'empresas.index'
            ]);
            Permission::create([
                'name'        => 'empresas.show'
            ]);
            Permission::create([
                'name'        => 'empresas.create'
            ]);
            Permission::create([
                'name'        => 'empresas.edit'
            ]);
            Permission::create([
                'name'        => 'empresas.destroy'
            ]);
        // oficinas
            Permission::create([
                'name'        => 'oficinas.index'
            ]);
            Permission::create([
                'name'        => 'oficinas.show'
            ]);
            Permission::create([
                'name'        => 'oficinas.create'
            ]);
            Permission::create([
                'name'        => 'oficinas.edit'
            ]);
            Permission::create([
                'name'        => 'oficinas.destroy'
            ]);
        // departamentos
            Permission::create([
                'name'        => 'departamentos.index'
            ]);
            Permission::create([
                'name'        => 'departamentos.show'
            ]);
            Permission::create([
                'name'        => 'departamentos.create'
            ]);
            Permission::create([
                'name'        => 'departamentos.edit'
            ]);
            Permission::create([
                'name'        => 'departamentos.destroy'
            ]);
        // activos
            Permission::create([
                'name'        => 'activos.index'
            ]);
            Permission::create([
                'name'        => 'activos.show'
            ]);
            Permission::create([
                'name'        => 'activos.create'
            ]);
            Permission::create([
                'name'        => 'activos.edit'
            ]);
            Permission::create([
                'name'        => 'activos.destroy'
            ]);
        // tipo_activos
            Permission::create([
                'name'        => 'tipo_activos.index'
            ]);
            Permission::create([
                'name'        => 'tipo_activos.show'
            ]);
            Permission::create([
                'name'        => 'tipo_activos.create'
            ]);
            Permission::create([
                'name'        => 'tipo_activos.edit'
            ]);
            Permission::create([
                'name'        => 'tipo_activos.destroy'
            ]);
        // roles
            Permission::create([
                'name'        => 'roles.index'
            ]);
            Permission::create([
                'name'        => 'roles.show'
            ]);
            Permission::create([
                'name'        => 'roles.create'
            ]);
            Permission::create([
                'name'        => 'roles.edit'
            ]);
            Permission::create([
                'name'        => 'roles.destroy'
            ]);
        //users
            Permission::create([
                'name'        => 'users.index'
            ]);
            Permission::create([
                'name'        => 'users.show'
            ]);
            Permission::create([
                'name'        => 'users.create'
            ]);
            Permission::create([
                'name'        => 'users.edit'
            ]);
            Permission::create([
                'name'        => 'users.destroy'
            ]);
        //asignaciones
            Permission::create([
                'name'        => 'asignaciones.index'
            ]);
            Permission::create([
                'name'        => 'asignaciones.show'
            ]);
            Permission::create([
                'name'        => 'asignaciones.create'
            ]);
            Permission::create([
                'name'        => 'asignaciones.edit'
            ]);
            Permission::create([
                'name'        => 'asignaciones.destroy'
            ]);
    
    }
}
