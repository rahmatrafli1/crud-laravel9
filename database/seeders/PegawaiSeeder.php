<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Faker\Factory as Faker;

class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // isi perintah disini
        // insert data ke table pegawai
        // DB::table('pegawai')->insert([
        //     'pegawai_nama' => 'Rahma',
        //     'pegawai_jabatan' => 'Web Designer',
        //     'pegawai_umur' => 24,
        //     'pegawai_alamat' => 'Jakarta'
        // ]);

        // dengan cara menggunakan faker
        $faker = Faker::create('id_ID');

        for ($i = 1; $i <= 50; $i++) {
            // insert data ke table pegawai secara acak
            DB::table('pegawai')->insert([
                'pegawai_nama' => $faker->name,
                'pegawai_jabatan' => $faker->jobTitle,
                'pegawai_umur' => $faker->numberBetween(22, 30),
                'pegawai_alamat' => $faker->address
            ]);
        }
    }
}
