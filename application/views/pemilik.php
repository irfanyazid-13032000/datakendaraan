<div class="col-md-10">
  <section class="content">
    <div class="row mt-3">
      <div class="col-md-6">
        <form action="" method="POST">
          <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Cari Nama Pemilik Kendaraan" name="keyword" autocomplete="off">
            <button class="btn btn-outline-secondary" type="submit">cari</button>
            <a href="<?php echo base_url() ?>close/pemilik" class="btn btn-dark">tampil data seluruh</a>
          </div>
        </form>
      </div>
    </div>
    <h2>Hasil Pencarian : <?php echo $pencarian ?></h2>
    <?php echo $this->pagination->create_links(); ?>
    <div class="container">
      <table class="table">
        <tr>
          <th>no</th>
          <th>nama pemilik</th>
          <th>jenis kelamin</th>
          <th>alamat</th>
          <th>aksi</th>
        </tr>
        <?php foreach ($pemilik as $p) : ?>
          <tr>
            <td><?php echo ++$start ?></td>
            <td><?php echo $p['nama_pemilik'] ?></td>
            <td><?php echo $p['jenis_kelamin'] ?></td>
            <td><?php echo $p['alamat'] ?></td>
            <td>
              <a href="<?php echo base_url() ?>pemilik/ubahpemilik/<?php echo $p['id'] ?>" class="btn btn-warning">ubah</a>
              <a href="<?php echo base_url() ?>pemilik/hapuspemilik/<?php echo $p['id'] ?>" class="btn btn-secondary" onclick="return confirm('apakah anda yakin?')">hapus</a>

            </td>
          <?php endforeach; ?>
      </table>
    </div>

    <!-- pemicu modal box -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
      Tambah
    </button>
  </section>
</div>


<!-- modal box nya -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Silahkan Input data</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="container">
          <div class="row">

            <form action=" <?php echo base_url() . 'pemilik/tambahpemilik' ?>" method="POST">
              <div class="form-group">
                <label for="">NIK</label>
                <input type="text" name="nik" class="form-control">
              </div>

              <div class="form-group">
                <label for="">Nama Pemilik</label>
                <input type="text" name="nama_pemilik" class="form-control">
              </div>

              <div class="form-group">
                <label for="">Tempat Tanggal Lahir</label>
                <input type="text" name="tmpt_tgl_lahir" class="form-control">
              </div>

              <div class="form-group">
                <label for="">Jenis Kelamin</label>
                <select name="jenis_kelamin" id="jenis_kelamin" class="form-select">\
                  <option value="null">Pilih Jenis Kelamin</option>
                  <option value="laki-laki">laki-laki</option>
                  <option value="perempuan">perempuan</option>
                </select>
              </div>

              <div class="form-group">
                <label for="">Alamat</label>
                <input type="text" name="alamat" class="form-control">
              </div>

              <div class="form-group">
                <label for="">Agama</label>
                <select name="agama" id="" class="form-select">
                  <option value="null">Pilih Agama</option>
                  <option value="Islam">Islam</option>
                  <option value="Kristen">Kristen</option>
                  <option value="Katolik">Katolik</option>
                  <option value="Hindu">Hindu</option>
                  <option value="Buddha">Buddha</option>
                  <option value="Konghuchu">Konghuchu</option>
                </select>
              </div>

              <div class="form-group">
                <label for="">Status Perkawinan</label>
                <select name="status_perkawinan" id="" class="form-select">\
                  <option value="null">Pilih Status Perkawinan</option>
                  <option value="Belum Menikah">Belum Menikah</option>
                  <option value="Sudah Menikah">Sudah Menikah</option>
                </select>
              </div>

              <div class="form-group">
                <label for="">Pekerjaan</label>
                <input type="text" name="pekerjaan" class="form-control">
              </div>


              <div class="modal-footer">
                <button type="reset" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Input</button>
              </div>


            </form>

          </div>

        </div>
      </div>
    </div>
  </div>
</div>
<!-- 
<script>
  const keyword = document.querySelector('.keyword');
  const container = document.querySelector('.container');
  keyword.addEventListener('keyup', function() {
    fetch('../../vendor/cari.php?keyword=' + keyword.value)
      // fetch('pemilik.php?keyword' + keyword.value)
      .then((response) => response.text())
      .then((response) => container.innerHTML = response);
  });
</script> -->