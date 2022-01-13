<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Select2 JS -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

<!-- <style>
  .input-group>.select2-container--bootstrap {
    width: auto;
    flex: 1 1 auto;
  }

  .input-group>.select2-container--bootstrap .select2-selection--single {
    height: 100%;
    line-height: inherit;
    padding: 0.5rem 1rem;
  }
</style> -->

<div class="col-md-10">
  <section class="content">
    <form action="" method="post">
      <div class="row">
        <div class="col-md-5">

          <label class="form-label">No Registrasi</label>
          <input type="text" id="no_registrasi" class="form-control" name="no_registrasi" placeholder="Nomor Registrasi" required>


          <label class="form-label">Pemilik</label>
          <select name="nama_pemilik" id="nama_pemilik" class="form-control">

            <option value="kosong">Select nama pemilik</option>

            <?php foreach ($pemilik as $pem) : ?>
              <option value="<?php echo $pem['nama_pemilik'] ?>"><?php echo $pem['nama_pemilik'] ?></option>
            <?php endforeach; ?>
          </select>

          <label class="form-label">Alamat</label>
          <input type="text" id="alamat" class="form-control" name="alamat" placeholder="Alamat" required>

          <label class="form-label">Merk</label>
          <input type="text" id="merk" class="form-control" name="merk" placeholder="Merk" required>

          <label class="form-label">Tipe</label>
          <input type="text" id="tipe" class="form-control" name="tipe" placeholder="Tipe" required>

          <label class="form-label">Jenis</label>
          <select name="jenis" id="jenis" class="form-control">

            <?php foreach ($jenis as $j) : ?>

              <option value="<?php echo $j['jenis_kendaraan'] ?>"><?php echo $j['jenis_kendaraan'] ?></option>
            <?php endforeach; ?>
          </select>

          <label class="form-label">Tahun Pembuatan</label>
          <input type="text" id="tahun_pembuatan" class="form-control" name="tahun_pembuatan" placeholder="Tahun Pembuatan" required>

          <label class="form-label">Silinder</label>
          <input type="text" id="isi_silinder" class="form-control" name="isi_silinder" placeholder="Silinder" required>

          <label class="form-label">No rangka</label>
          <input type="text" id="no_rangka" class="form-control" name="no_rangka" placeholder="Nomor Rangka" required>

          <label class="form-label">No mesin</label>
          <input type="text" id="no_mesin" class="form-control" name="no_mesin" placeholder="Nomor Mesin" required>
        </div>

        <div class="col-md-5">

          <label class="form-label">Warna</label>
          <input type="text" id="warna" class="form-control" name="warna" placeholder="Warna" required>

          <label class="form-label">Bahan bakar</label>
          <input type="text" id="bahan_bakar" class="form-control" name="bahan_bakar" placeholder="Bahan Bakar" required>

          <label class="form-label">Warna TNKB</label>
          <input type="text" id="warna_tnkb" class="form-control" name="warna_tnkb" placeholder="Warna TNKB" required>

          <label class="form-label">Tahun Registrasi</label>
          <input type="text" id="tahun_registrasi" class="form-control" name="tahun_registrasi" placeholder="Tahun Registrasi" required>

          <label class="form-label">No BPKB</label>
          <input type="text" id="no_bpkb" class="form-control" name="no_bpkb" placeholder="Nomor BPKB" required>

          <label class="form-label">Tanggal Habis STNK</label>
          <input type="text" id="tanggal_habis_stnk" class="form-control" name="tanggal_habis_stnk" onfocus="(this.type='date')" placeholder="Tanggal Habis STNK" required>

          <label class="form-label">Input KIR</label>
          <input type="date" id="jatuh_tempo_kir" class="form-control" name="jatuh_tempo_kir" required>

          <label class="form-label">Harga STNK</label>
          <input type="text" id="harga_stnk" class="form-control" name="harga_stnk" placeholder="Harga STNK" required>

          <label class="form-label">Harga KIR</label>
          <input type="text" id="harga_kir" class="form-control" name="harga_kir" placeholder="Harga KIR" required>

          <label class="form-label">No Uji KIR</label>
          <input type="text" id="no_uji_kir" class="form-control" name="no_uji_kir" placeholder="Nomor Uji KIR" required>

          <div class="modal-footer">

            <button type="submit" class="btn btn-primary">Tambah</button>
          </div>
        </div>

      </div>

    </form>
  </section>
</div>

<script>
  $(document).ready(function() {
    $("#nama_pemilik").select2();


  });
</script>