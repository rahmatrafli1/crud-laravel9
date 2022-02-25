<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PegawaiController extends Controller
{
    // method untuk mengambil data dari data base
    public function index()
    {
        // mengambil data dari tabel pegawai
        $pegawai = DB::table('pegawai')->paginate(10);

        // mengirimkan data pegawai ke view pegawai
        return view('pegawai', ['pegawai' => $pegawai]);
    }

    // method untuk menampilkan view form tambah pegawai
    public function tambah()
    {
        // memanggil view tambah
        return view('tambah');
    }

    // method untuk menambahkan data pegawai
    public function store(Request $request)
    {
        // insert data ke table pegawai
        DB::table('pegawai')->insert([
            'pegawai_nama' => $request->nama,
            'pegawai_jabatan' => $request->jabatan,
            'pegawai_umur' => $request->umur,
            'pegawai_alamat' => $request->alamat
        ]);

        // alihkan ke halaman utama
        return redirect('/');
    }

    // method untuk menampilkan view form edit pegawai
    public function edit($id)
    {
        // mengambil data pegawai berdasarkan id yang dipilih
        $pegawai = DB::table('pegawai')->where('pegawai_id', $id)->get();

        // passing data ke halaman edit.blade.php
        return view('edit', ['pegawai' => $pegawai]);
    }

    // method untuk mengubah data pegawai
    public function update(Request $request)
    {
        // update data pegawai
        DB::table('pegawai')->where('pegawai_id', $request->id)->update([
            'pegawai_nama' => $request->nama,
            'pegawai_jabatan' => $request->jabatan,
            'pegawai_umur' => $request->umur,
            'pegawai_alamat' => $request->alamat
        ]);

        // alihkan ke halaman utama
        return redirect('/');
    }

    // method untuk menghapus data pegawai
    public function hapus($id)
    {
        // menghapus data pegawai berdasarkan id yang dipilih
        DB::table('pegawai')->where('pegawai_id', $id)->delete();

        // alihkan ke halaman utama
        return redirect('/');
    }
}
