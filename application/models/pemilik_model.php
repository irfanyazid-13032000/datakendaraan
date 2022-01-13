<?php
class pemilik_model extends CI_Model
{
  public function getDataPemilik()
  {
    $this->db->order_by('nama_pemilik', 'ASC');
    return $this->db->get('pemilik')->result_array();
  }

  public function getJumlahDataPemilik($keyword)
  {
    if ($keyword) {
      $this->db->like('nama_pemilik', $keyword);
      $this->db->or_like('jenis_kelamin', $keyword);
      $this->db->or_like('alamat', $keyword);
      return $this->db->get('pemilik')->num_rows();
    } else {
      return $this->db->get('pemilik')->num_rows();
    }
  }

  public function getTampilPemilikPagination($limit, $start, $keyword)
  {
    if ($keyword) {
      $this->db->order_by('nama_pemilik', 'ASC');
      $this->db->like('nama_pemilik', $keyword);
      $this->db->or_like('jenis_kelamin', $keyword);
      $this->db->or_like('alamat', $keyword);
      return $this->db->get('pemilik', $limit, $start)->result_array();
    } else {
      $this->db->order_by('nama_pemilik', 'ASC');
      return $this->db->get('pemilik', $limit, $start)->result_array();
    }
  }

  // public function getTampilPemilikDenganKeyword($limit, $start, $keyword)
  // {
  //   $this->db->like('nama_pemilik', $keyword);
  //   $this->db->or_like('jenis_kelamin', $keyword);
  //   return $this->db->get('pemilik', $limit, $start)->result_array();
  // }

  // public function getJumlahPemilikKeyword($keyword)
  // {
  //   $this->db->like('nama_pemilik', $keyword);
  //   $this->db->or_like('jenis_kelamin', $keyword);
  //   return $this->db->get('pemilik')->num_rows();
  // }



  public function hapuspemilik($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('pemilik');
  }

  public function tambahpemilik()
  {
    $data = [
      'nik' => $this->input->post('nik'),
      'nama_pemilik' => $this->input->post('nama_pemilik'),
      'tmpt_tgl_lahir' => $this->input->post('tmpt_tgl_lahir'),
      'jenis_kelamin' => $this->input->post('jenis_kelamin'),
      'alamat' => $this->input->post('alamat'),
      'agama' => $this->input->post('agama'),
      'status_perkawinan' => $this->input->post('status_perkawinan'),
      'pekerjaan' => $this->input->post('pekerjaan'),
      'kewarganegaraan' => 'indonesia'
    ];

    $this->db->insert('pemilik', $data);
  }

  // mendapatkan data pemilik

  public function getDataPemilikById($id)
  {
    return $this->db->get_where('pemilik', ['id' => $id])->row_array();
  }

  public function ubahpemilik($id)
  {
    $data = [
      'nik' => $this->input->post('nik'),
      'nama_pemilik' => $this->input->post('nama_pemilik'),
      'tmpt_tgl_lahir' => $this->input->post('tmpt_tgl_lahir'),
      'jenis_kelamin' => $this->input->post('jenis_kelamin'),
      'alamat' => $this->input->post('alamat'),
      'agama' => $this->input->post('agama'),
      'status_perkawinan' => $this->input->post('status_perkawinan'),
      'pekerjaan' => $this->input->post('pekerjaan'),
      'kewarganegaraan' => 'indonesia'
    ];
    $this->db->where('id', $id);

    $this->db->update('pemilik', $data);
  }
}
