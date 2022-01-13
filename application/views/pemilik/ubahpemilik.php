<div class="col-md-5">
  <section class="content">
    <h3>Ubah Kendaraan <?= $pemilik['nama_pemilik']; ?></h3>

    <form action="" method="post">

      <input type="hidden" value="<?php echo $pemilik['id'] ?>" name="id">

      <label class="form-label">NIK</label>
      <input type="text" id="nik" class="form-control" value="<?php echo $pemilik['nik'] ?>" name="nik">


      <label class="form-label">nama pemilik</label>
      <input type="text" id="nama_pemilik" class="form-control" value="<?php echo $pemilik['nama_pemilik'] ?>" name="nama_pemilik">

      <label class="form-label">Tempat Tanggal Lahir</label>
      <input type="text" id="tmpt_tgl_lahir" class="form-control" value="<?php echo $pemilik['tmpt_tgl_lahir'] ?>" name="tmpt_tgl_lahir">

      <label class="form-label">Jenis Kelamin</label>
      <select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
        <?php foreach ($kelamin as $kel) : ?>
          <?php if ($kel === $pemilik['jenis_kelamin']) : ?>
            <option value="<?php echo $kel ?>" selected><?php echo $kel ?></option>
          <?php else : ?>
            <option value="<?php echo $kel ?>"><?php echo $kel ?></option>
          <?php endif; ?>
        <?php endforeach; ?>
      </select>

      <label class="form-label">alamat</label>
      <input type="text" id="alamat" class="form-control" value="<?php echo $pemilik['alamat'] ?>" name="alamat">

      <label class="form-label">agama</label>
      <select name="agama" id="agama" class="form-control">

        <?php foreach ($agama as $a) : ?>
          <?php if ($a === $pemilik['agama']) : ?>
            <option value="<?php echo $a ?>" selected><?php echo $a ?></option>
          <?php else : ?>
            <option value="<?php echo $a ?>"><?php echo $a ?></option>
          <?php endif; ?>
        <?php endforeach; ?>
      </select>

      <label class="form-label">Status Perkawinan</label>
      <select name="status_perkawinan" id="status_perkawinan" class="form-control">
        <?php foreach ($kawin as $kaw) : ?>
          <?php if ($kaw === $pemilik['status_perkawinan']) : ?>
            <option value="<?php echo $kaw ?>" selected><?php echo $kaw ?></option>
          <?php else : ?>
            <option value="<?php echo $kaw ?>"><?php echo $kaw ?></option>
          <?php endif; ?>
        <?php endforeach; ?>
      </select>
      </select>

      <label class="form-label">Pekerjaan</label>
      <input type="text" id="pekerjaan" class="form-control" value="<?php echo $pemilik['pekerjaan'] ?>" name="pekerjaan">

      <label class="form-label">Kewarganegaraan</label>
      <input type="text" id="kewarganegaraan" class="form-control" value="<?php echo $pemilik['kewarganegaraan'] ?>" name="kewarganegaraan">


      <div class="modal-footer">

        <button type="submit" class="btn btn-primary">Ubah</button>
      </div>



    </form>
  </section>
</div>