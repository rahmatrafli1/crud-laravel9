<!DOCTYPE html>
<html>
    <head>
        <title>Tutorial CRUD Laravel 9</title>
    </head>
    <body>
        <h3>Data Pegawai</h3>

        <a href="/pegawai/tambah">+ Tambah Data Pegawai</a>

        <br><br>

        <table border="1">
            <tr>
                <th>No.</th>
                <th>Nama</th>
                <th>Jabatan</th>
                <th>Umur</th>
                <th>Alamat</th>
                <th>Opsi</th>
            </tr>
            @php
                $i = 1;
            @endphp
            @foreach ($pegawai as $p)
                <tr>
                    <td>{{ $i++ }}</td>
                    <td>{{ $p->pegawai_nama }}</td>
                    <td>{{ $p->pegawai_jabatan }}</td>
                    <td>{{ $p->pegawai_umur }}</td>
                    <td>{{ $p->pegawai_alamat }}</td>
                    <td>
                        <a href="/pegawai/edit/{{ $p->pegawai_id }}">Edit</a>
                        |
                        <a href="/pegawai/hapus/{{ $p->pegawai_id }}" onclick="return confirm('Yakin Mau dihapus?')">Hapus</a>
                    </td>
                </tr>
            @endforeach
        </table>
    </body>
</html>
