<?php
class Statistik extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('statistik_model');
  }

  public function index()
  {
    $data['judul'] = 'data statistik kendaraan';
    $data['kendaraan'] = $this->statistik_model->jumlahKendaraan();
    $data['label'] = $this->statistik_model->jenisKendaraan();
    $data['motor'] = $this->statistik_model->kuantitimotor();
    $data['mobil'] = $this->statistik_model->kuantitimobil();
    $data['truk'] = $this->statistik_model->kuantititruk();


    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar');
    $this->load->view('chartkendaraan', $data);
    $this->load->view('templates/footer');
  }
}
