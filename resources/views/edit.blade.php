<!DOCTYPE html>
<html>

<head>
    <title>Tutorial CRUD Laravel 9</title>
</head>

<body>

    <h3>Edit Pegawai</h3>

    <a href="/"> Kembali</a>

    <br />
    <br />

    @foreach($pegawai as $p)
        <form action="/pegawai/update" method="post">
            {{ csrf_field() }}
            <input type="hidden" name="id" value="{{ $p->pegawai_id }}">
            Nama <input type="text" name="nama" required="required" value="{{ $p->pegawai_nama }}"> <br />
            Jabatan <input type="text" name="jabatan" required="required" value="{{ $p->pegawai_jabatan }}"> <br />
            Umur <input type="number" name="umur" required="required" value="{{ $p->pegawai_umur }}"> <br />
            Alamat <textarea name="alamat" required="required">{{ $p->pegawai_alamat }}</textarea> <br />
            <input type="submit" value="Edit Data">
        </form>
    @endforeach

</body>

</html>
