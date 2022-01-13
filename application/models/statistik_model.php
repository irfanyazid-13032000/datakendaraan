<?php
class statistik_model extends CI_Model
{
  public function jenisKendaraan()
  {
    $this->db->select('jenis_kendaraan');
    return $this->db->get('jenis_kendaraan')->result_array();
  }

  public function jumlahKendaraan()
  {
    return $this->db->get('kendaraan')->result();
  }

  public function kuantitimotor()
  {
    return $this->db->get_where('kendaraan', ['jenis' => 'MOTOR'])->num_rows();
  }

  public function kuantitimobil()
  {
    return $this->db->get_where('kendaraan', ['jenis' => 'MOBIL'])->num_rows();
  }

  public function kuantititruk()
  {
    return $this->db->get_where('kendaraan', ['jenis' => 'TRUK'])->num_rows();
  }
}
