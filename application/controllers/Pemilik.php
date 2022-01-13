<?php
class Pemilik extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();

    $this->load->model('pemilik_model');
  }




  public function index()
  {

    $data['judul'] = 'Daftar Pemilik';
    if ($this->input->post('keyword')) {
      $data['keyword'] =  $this->input->post('keyword');
      $this->session->set_userdata('keyword', $data['keyword']);
    } else {
      $data['keyword'] = $this->session->userdata('keyword');
    }
    $config['total_rows'] = $this->pemilik_model->getJumlahDataPemilik($data['keyword']);


    $data['pencarian'] = $config['total_rows'];

    $config['per_page'] = 10;
    $config['base_url'] = 'http://localhost/datakendaraan/pemilik/index/';

    // var_dump($config['total_rows']);
    // exit;


    $this->pagination->initialize($config);

    if ($config['total_rows'] <= $config['per_page']) {
      $data['start'] = 0;
      // jika hasil query kurang dari uri segment maka data start nya uri segment - per page
    } elseif ($config['total_rows'] <= $this->uri->segment(3)) {
      $data['start'] = $this->uri->segment(3) - $config['per_page'];
      // jika tidak ada $config['total_rows']
    } else {
      $data['start'] = $this->uri->segment(3);
    }

    // $data['start'] = $this->uri->segment(3);

    $data['pemilik'] = $this->pemilik_model->getTampilPemilikPagination($config['per_page'], $data['start'], $data['keyword']);




    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar');
    $this->load->view('pemilik', $data);
    $this->load->view('templates/footer');
  }

  public function hapuspemilik($id)
  {
    $this->pemilik_model->hapuspemilik($id);
    echo '<script>alert("Anda Telah Berhasil menghapus data")</script>';
    redirect('pemilik');
  }

  public function tambahpemilik()
  {
    $this->pemilik_model->tambahpemilik();
    redirect('pemilik');
  }

  public function ubahpemilik($id)
  {
    $data['judul'] = 'ubah Pemilik Kendaraan';
    $data['pemilik'] = $this->pemilik_model->getDataPemilikById($id);
    $data['kelamin'] = ['pria', 'wanita'];
    $data['agama'] = ['Islam', 'Kristen', 'Katolik', 'Hindu', 'Buddha', 'Konghuchu'];
    $data['kawin'] = ['Sudah Menikah', 'Belum Menikah'];


    $this->form_validation->set_rules('nama_pemilik', 'pemilik', 'required');
    if ($this->form_validation->run() === false) {
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar');
      $this->load->view('pemilik/ubahpemilik', $data);
      $this->load->view('templates/footer');
    } else {
      $this->pemilik_model->ubahpemilik($id);
      redirect('pemilik');
    }
  }
}
