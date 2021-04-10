<?php
/*
Nama: Isep Lutpi Nur
NPM: 2113191079
Mata Kuliah: Praktek Pemrograman Web
Prodi: Teknik Infromatika
Kelas: A2 2019
*/
// Setting database
define('HOST', 'localhost:3307');
define('USER', 'root');
define('PASS', '');
define('DB', 'uts_pem_web_2113191079_iseplutpinur');
$conn = new mysqli(HOST, USER, PASS, DB) or die('Connetion error to the database');
// =====================================================================================================================

// Alert
$alert = null;
function setAlert($color, $title, $fill)
{
    return ['color' => $color, 'title' => $title, 'fill' => $fill];
}
// =====================================================================================================================

// simpan tambah data mahasiswa
if (isset($_POST['baru_simpan'])) {
    $query = "INSERT INTO `mahasiswa` (`id`, `nama`, `npm`, `jurusan`) VALUES (NULL, '" . $_POST['baru_nama'] . "', '" . $_POST['baru_npm'] . "', '" . $_POST['baru_jurusan'] . "')";
    if (mysqli_query($conn, $query)) {
        $alert = setAlert('success', 'Berhasil', 'Data Mahasiswa Berhasil Ditambahkan. ');
    } else {
        $alert = setAlert('danger', 'Gagal', 'Data Mahasiswa Gagal Ditambahkan. ');
    }
}
// =====================================================================================================================

// simpan ubah data mahasiswa
if (isset($_POST['ubah_simpan'])) {
    $set = "";
    if ($_POST['ubah_nama'] != $_POST['ubah_nama_asal']) {
        $set = "nama = '" . $_POST['ubah_nama'] . "'";
    }
    if ($_POST['ubah_npm'] != $_POST['ubah_npm_asal']) {
        $set = $set ? $set . ", " : "";
        $set .= "npm = '" . $_POST['ubah_npm'] . "'";
    }
    if ($_POST['ubah_jurusan'] != $_POST['ubah_jurusan_asal']) {
        $set = $set ? $set . ", " : "";
        $set .= "jurusan = '" . $_POST['ubah_jurusan'] . "'";
    }
    if ($set) {
        $query = "UPDATE mahasiswa SET $set WHERE id = " . $_POST['ubah_id'];
        if (mysqli_query($conn, $query)) {
            $alert = setAlert('success', 'Berhasil', 'Data Mahasiswa Berhasil Diubah. ');
        } else {
            $alert = setAlert('danger', 'Gagal', 'Data Mahasiswa Gagal Diubah. ');
        }
    }
}
// =====================================================================================================================

// simpan hapus data mahasiswa
if (isset($_POST['hapus_simpan'])) {
    if (mysqli_query($conn, "DELETE FROM mahasiswa WHERE id = " . $_POST['hapus_id'])) {
        $alert = setAlert('success', 'Berhasil', 'Data Mahasiswa Berhasil Dihapus. ');
    } else {
        $alert = setAlert('danger', 'Gagal', 'Data Mahasiswa Gagal Dihapus. ');
    }
}
// =====================================================================================================================

// Get data mahasiswa
// Pencarian
$keyword = isset($_GET['cari']) ? $_GET['cari'] : "";
$search = $keyword ? ' WHERE (id LIKE "%' . $keyword . '%") or (nama LIKE "%' . $keyword . '%") or (npm LIKE "%' . $keyword . '%") or (jurusan LIKE "%' . $keyword . '%")' : "";
// Query data mahasiswa
$mahasiswa = mysqli_query($conn, 'SELECT * FROM mahasiswa' . $search . ' ORDER BY id DESC');
if ($mahasiswa) {
    $rows = [];
    while ($row = mysqli_fetch_array($mahasiswa, MYSQLI_ASSOC)) {
        $rows[] = $row;
    }
    $mahasiswa = $rows;
} else $mahasiswa = [];
// =====================================================================================================================
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/bootstrap-4.0.0-dist/css/bootstrap.min.css">
    <title>Data Mahasiswa</title>
</head>

<body>
    <!-- Navigasi -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href=""><b>CRUD Data Mahasiswa</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
            </ul>
            <form class="form-inline my-2 my-lg-0" method="get" action="">
                <input class="form-control mr-sm-2" type="search" placeholder="Cari Mahasiswa" aria-label="Search" name='cari' value="<?php echo $keyword; ?>">
                <?php if ($keyword) {
                    echo '<a href="?cari=" class="btn btn-outline-danger mr-2">X</a>';
                } ?>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Cari</button>
            </form>
        </div>
    </nav>
    <!-- Navigasi -->


    <div class="container my-5">
        <!-- Alert -->
        <?php if ($alert) : ?>
            <div class="alert alert-<?php echo $alert['color']; ?> alert-dismissible fade show" role="alert">
                <strong><?php echo $alert['title']; ?></strong> <?php echo $alert['fill']; ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php endif; ?>
        <!-- Alert -->


        <!-- Tabel data mahasiswa -->
        <div class="card ">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="my-0 mr-md-auto font-weight-normal">Data Mahasiswa</h5>
                <!-- modal bootom -->
                <button type="button" data-url="" class="btn btn-success tombolTambahData" data-toggle="modal" data-target="#modalTambah">Tambah Mahasiswa</button>
            </div>
            <div class="card-body">
                <table id="table-data" class="table table-bordered table-striped table-hover" role="grid" aria-describedby="table-data_info">
                    <thead>
                        <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Nama</th>
                            <th class="text-center">NPM</th>
                            <th class="text-center">Jurusan</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($mahasiswa) {
                            $nomor = 1;
                            foreach ($mahasiswa as $mhs) { ?>
                                <tr>
                                    <td><?php echo $nomor; ?></td>
                                    <td><?php echo $mhs['nama']; ?></td>
                                    <td><?php echo $mhs['npm']; ?></td>
                                    <td><?php echo $mhs['jurusan']; ?></td>
                                    <td class="text-nowrap text-center">
                                        <button class="btn btn-sm btn-warning" data-id="<?php echo $mhs['id']; ?>" data-nama="<?php echo $mhs['nama']; ?>" data-npm="<?php echo $mhs['npm']; ?>" data-jurusan="<?php echo $mhs['jurusan']; ?>" data-toggle="modal" data-target="#modalUbah" onclick="ubahData(this)">Edit</button>
                                        <button class="btn btn-sm btn-danger" data-id="<?php echo $mhs['id']; ?>" data-nama="<?php echo $mhs['nama']; ?>" data-npm="<?php echo $mhs['npm']; ?>" onclick="hapusData(this)" data-toggle="modal" data-target="#modalHapus">Hapus</button>
                                    </td>
                                </tr>
                            <?php $nomor++;
                            }
                        } else { ?>
                            <tr>
                                <td colspan="5" class="text-center">Data Mahasiswa Tidak Tersedia</td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Tabel data mahasiswa -->

    <!-- Modal Tambah Data Mahasiswa -->
    <div class="modal fade" id="modalTambah" tabindex="-1" role="dialog" aria-labelledby="modalTambahLabel" aria-hidden="true">
        <form method="post" action="">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalTambahLabel">Tambah Data Mahasiswa</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="baru_nama">Nama Mahasiswa</label>
                            <input type="text" class="form-control" id="baru_nama" name="baru_nama" required placeholder="Nama Mahasiswa">
                        </div>
                        <div class="form-group">
                            <label for="baru_npm">Nomor Pokok Mahasiswa</label>
                            <input type="number" class="form-control" id="baru_npm" name="baru_npm" min="1000000000" max="9999999999" required placeholder="Nomor Pokok Mahasiswa">
                        </div>
                        <div class="form-group">
                            <label for="baru_jurusan">Jrurusan</label>
                            <input type="text" class="form-control" id="baru_jurusan" name="baru_jurusan" required placeholder="Jrurusan">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary" name="baru_simpan">Simpan</button>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <!-- Modal Hapus Data Mahasiswa -->
    <div class="modal fade" id="modalHapus" tabindex="-1" role="dialog" aria-labelledby="modalHapusLabel" aria-hidden="true" style="color:white;">
        <form method="post" action="">
            <div class="modal-dialog">
                <div class="modal-content bg-danger">
                    <div class="modal-header">
                        <h4 class="modal-title">Hapus Data Mahasiswa</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" style="color: white;">×</span>
                        </button>
                    </div>
                    <div class="modal-body" id="modal_hapus_body">
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-outline-light" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-outline-light" name="hapus_simpan">Hapus</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
        </form>
    </div>

    <!-- Modal Ubah Data Mahasiswa -->
    <div class="modal fade" id="modalUbah" tabindex="-1" role="dialog" aria-labelledby="modalUbahLabel" aria-hidden="true">
        <form method="post" action="">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalUbahLabel">Edit Data Mahasiswa</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="ubah_nama">Nama Mahasiswa</label>
                            <input type="text" class="form-control" id="ubah_nama" name="ubah_nama" required placeholder="Nama Mahasiswa">
                            <input type="text" class="form-control" id="ubah_nama_asal" name="ubah_nama_asal" style="display:none">
                            <input type="text" class="form-control" id="ubah_id" name="ubah_id" style="display:none">
                        </div>
                        <div class="form-group">
                            <label for="ubah_npm">Nomor Pokok Mahasiswa</label>
                            <input type="number" class="form-control" id="ubah_npm" name="ubah_npm" min="1000000000" max="9999999999" required placeholder="Nomor Pokok Mahasiswa">
                            <input type="number" class="form-control" id="ubah_npm_asal" name="ubah_npm_asal" style="display:none">
                        </div>
                        <div class="form-group">
                            <label for="ubah_jurusan">Jrurusan</label>
                            <input type="text" class="form-control" id="ubah_jurusan" name="ubah_jurusan" required placeholder="Jrurusan">
                            <input type="text" class="form-control" id="ubah_jurusan_asal" name="ubah_jurusan_asal" style="display:none">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary" name="ubah_simpan">Simpan</button>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <footer style="position: block;bottom: 0;width: 100%;height: 60px;line-height: 60px;background-color: #f5f5f5;">
        <div class="container">
            <span class="text-muted">CRUD Data Mahasiswa | UTS GENAP 2113191079 Isep Lutpi Nur &copy;2021</span>
        </div>
    </footer>
    <script src="assets/jquery-3.6.0.js"></script>
    <script src="assets/bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>
    <script>
        // hapus data handeler
        function hapusData(e) {
            $('#modal_hapus_body').html(`
                    <input type="text" name="hapus_id" value="${e.dataset.id}" style="display:none">
                    <p>Apakah anda yakin akan menghapus data mahasiswa <b>${e.dataset.nama}</b> NPM <b>${e.dataset.npm}</b></p>
            `);
        }

        // edit data handeler
        function ubahData(e) {
            $("#ubah_id").val(e.dataset.id);
            $("#ubah_nama").val(e.dataset.nama);
            $("#ubah_nama_asal").val(e.dataset.nama);
            $("#ubah_npm").val(e.dataset.npm);
            $("#ubah_npm_asal").val(e.dataset.npm);
            $("#ubah_jurusan").val(e.dataset.jurusan);
            $("#ubah_jurusan_asal").val(e.dataset.jurusan);
        }
    </script>
</body>

</html>