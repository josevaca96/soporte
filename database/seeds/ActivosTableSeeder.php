<?php

use Illuminate\Database\Seeder;
use App\TipoActivo;
use App\Oficina;
use App\Departamento;
use App\Empresa;

class ActivosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     
    //Departamentos
        Departamento::create([
            'Nombre'    => 'Recursos Humanos',
            'Descripcion'   => '..',
        ]);
        Departamento::create([
            'Nombre'    => 'Soporte',
            'Descripcion'   => '..',
        ]);
        Departamento::create([
            'Nombre'    => 'Call-Center',
            'Descripcion'   => '..',
        ]);
        Departamento::create([
            'Nombre'    => 'Infraestructura',
            'Descripcion'   => '..',
        ]);
        Departamento::create([
            'Nombre'    => 'Legal',
            'Descripcion'   => '..',
        ]);
        Departamento::create([
            'Nombre'    => 'Ventas',
            'Descripcion'   => '..',
        ]);
    
   
   
    //Oficinas
        Oficina::create([
            'Direccion'    => 'Las Brisas Cuarto Anillo av/Banzer',
            'Descripcion'   => 'Las Brisas',
        ]);
        Oficina::create([
            'Direccion'    => 'Primer Anillo Av/Cañoto',
            'Descripcion'   => 'Edificio Celina Central',
        ]);
    //Empresa
        Empresa::create([
            'Nombre'    => 'Galileo',
            'Descripcion'   => 'Empresa dedicada al Analisis de Datos',
        ]);    
        Empresa::create([
            'Nombre'    => 'Celina',
            'Descripcion'   => 'Rubro de ventas de Terrenos',
        ]);   
        Empresa::create([
            'Nombre'    => 'Pacucito',
            'Descripcion'   => 'Venta de Producto Apicula',
        ]);
        Empresa::create([
            'Nombre'    => 'Tienda Celina',
            'Descripcion'   => 'Venta de Electrodomésticos y producto del Hogar',
        ]);
        Empresa::create([
            'Nombre'    => 'Brisas de Paz',
            'Descripcion'   => 'Venta de terrenos Parque Cementerio',
        ]);    
    //Tipo Activo
        TipoActivo::create([
            'Nombre'    => 'Laptop',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Cargador',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Teclado',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Mouse',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Pc-Escritorio',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Impresora',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Monitor',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Tv-Plasma',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Proyector',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Parlantes',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Scanner',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Telefono',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Auriculares',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Etiquetadora',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Usb',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Camara-Web',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Adaptador',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Bateria',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Swith',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Camara-de-Seguridad',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Modem',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Control-Remoto',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Cloud-key',
            'Descripcion'   => '..',
        ]); 
        TipoActivo::create([
            'Nombre'    => 'Pizarra-Digital',
            'Descripcion'   => '..',
        ]); 
        
        TipoActivo::create([
            'Nombre'    => 'Toner',
            'Descripcion'   => '..',
        ]);

        TipoActivo::create([
            'Nombre'    => 'Poe',
            'Descripcion'   => '..',
        ]);

        TipoActivo::create([
            'Nombre'    => 'Transformador-de-Telefonia',
            'Descripcion'   => '..',
        ]);

        TipoActivo::create([
            'Nombre'    => 'Router',
            'Descripcion'   => '..',
        ]);

        TipoActivo::create([
            'Nombre'    => 'Disco-Solido',
            'Descripcion'   => '..',
        ]);

        TipoActivo::create([
            'Nombre'    => 'Disco-Duro',
            'Descripcion'   => '..',
        ]);

        TipoActivo::create([
            'Nombre'    => 'Papel',
            'Descripcion'   => '..',
        ]);

        TipoActivo::create([
            'Nombre'    => 'Soporte-Tv',
            'Descripcion'   => '..',
        ]);
        TipoActivo::create([
            'Nombre'    => 'Usb-Vga',
            'Descripcion'   => '..',
        ]);
        TipoActivo::create([
            'Nombre'    => 'Cargador-de-Bateria',
            'Descripcion'   => '..',
        ]);
        TipoActivo::create([
            'Nombre'    => 'Bluetooth',
            'Descripcion'   => '..',
        ]);
        TipoActivo::create([
            'Nombre'    => 'Convertidor-Pop',
            'Descripcion'   => '..',
        ]);
        TipoActivo::create([
            'Nombre'    => 'Ups',
            'Descripcion'   => '..',
        ]);
        TipoActivo::create([
            'Nombre'    => 'Fuente-de-Alimentacion',
            'Descripcion'   => '..',
        ]);
        
    }
}
