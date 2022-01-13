<?php
class Close extends CI_Controller
{
  public function index()
  {
    $this->session->sess_destroy('tglmulai');
    $this->session->sess_destroy('tglselesai');

    redirect(base_url('kendaraan'));
  }

  public function nokir()
  {
    $this->session->sess_destroy('tglmulai');
    $this->session->sess_destroy('tglselesai');

    redirect(base_url('nokir'));
  }


  public function pemilik()
  {
    $this->session->sess_destroy('keyword');
    redirect(base_url('pemilik'));
  }

  public function logout()
  {
    $this->session->sess_destroy('nama');
    redirect(base_url('halo'));
  }
}
