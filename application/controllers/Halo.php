<?php
class Halo extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->library('form_validation');
  }

  public function index()
  {
    if ($this->session->userdata('nama')) {
      $data['judul'] = 'Dashboard';
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar');
      $this->load->view('halo');
      $this->load->view('templates/footer');
    } else {
      $this->form_validation->set_rules('nama', 'Nama', 'required');
      $this->form_validation->set_rules('password', 'Password', 'required');
      if ($this->form_validation->run() === false) {
        $this->load->view('index');
      } else {
        $nama = $this->input->post('nama');
        $password = $this->input->post('password');
        $user = $this->db->get_where('user', ['nama' => $nama])->row_array();
        // jika user ada
        if ($user) {
          // jika password sama dengan yang di database
          if ($password === $user['password']) {
            $this->session->set_userdata('nama', $nama);
            redirect('halo');
          } else {
            $this->session->set_flashdata('pesankebenaran', '<div class="alert alert-danger" role="alert">password anda salah</div>');
            redirect('halo');
          }
        } else {
          $this->session->set_flashdata('pesankebenaran', '<div class="alert alert-danger" role="alert">username tidak ada</div>');
          redirect('halo');
        }
      }
    }
  }
}
