<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    function __construct()
	{
		parent::__construct();
		$this->load->database();
        $this->load->library('form_validation');

       /*cache control*/
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
    }

    public function index()
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');
        if ($this->session->userdata('admin_login') == 1)
            redirect(site_url('admin/dashboard'), 'refresh');
    }

    function dashboard()
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $page_data['page_name']  = 'dashboard';
        $page_data['page_title'] = 'admin_dashboard';
        
        $this->load->view('index', $page_data);
    }

    function dosen()
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $list1 = $this->db->get_where('jadwalfh', array('kode_matkul!=' => NULL))->result_array();
        $dosen = $this->db->select('DISTINCT(dosen1)')->get('jadwalfh')->result_array();

        $page_data['page_name']  = 'daftar_dosen';
        $page_data['page_title'] = 'Daftar Dosen';
        $page_data['dosen'] = $dosen;
        
        $this->load->view('index', $page_data);
    }

    function detail_dosen($id){
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $cari = $this->db->get_where('jadwalfh', array('id' => $id))->row();
        $nama = $cari->dosen1;
        $data = $this->db->get_where('jadwalfh', array('dosen1' => $nama))->result_array();
        $data1 = $this->db->get_where('honor', array('nama_dosen' => $nama));
        $data2 = $this->db->get_where('kelebihan', array('nama_dosen' => $nama));
        $kelebihan = $data2->row();
        $honor_sks = $data1->row();
        
        if ($data1->num_rows() > 0) {
            $btn = "<a id='add-event' data-toggle='modal' href='#edit-honor'><span class='badge badge-warning'>Ubah</span></a>";
            $honor = $honor_sks->honor_sks;
            $honor_id = $honor_sks->id;
        }else {
            $btn = "<a id='add-event' data-toggle='modal' href='#add-honor'><span class='badge badge-warning'>Tambah</span></a>";
            $honor = 0;
            $honor_id = 0;
        }
        if ($data2->num_rows() > 0) {
            $btn_k = "<a id='add-event' data-toggle='modal' href='#edit-kelebihan'><span class='badge badge-warning'>Ubah</span></a>";
        } else {
            $btn_k = "<a id='add-event' data-toggle='modal' href='#add-kelebihan'><span class='badge badge-warning'>Tambah</span></a>";
        }
        

        $page_data['page_name']  = 'detail_dosen';
        $page_data['page_title'] = 'Detail Dosen';
        $page_data['dosen'] = $data;
        $page_data['nama_dosen'] = $nama;
        $page_data['info'] = $cari;
        $page_data['honor'] = $honor;
        $page_data['honor_id'] = $honor_id;
        $page_data['btn'] = $btn;
        $page_data['btn_k'] = $btn_k;

        $this->load->view('index', $page_data);
    }

    function simpan_data($id){

        $cari = $this->db->get_where('jadwalfh', array('id' => $id))->row();
        $nama = $cari->dosen1;
        $data['jadwal_id'] = $id;
        $data['nama_dosen'] = $nama;
        $data['jml_pertemuan'] = $this->input->post('jml_p');
        $data['sks_max'] = $this->input->post('sks_m');

        $this->db->insert('kelebihan', $data);

        // $pesan = 'Data Berhasil Disimpan';
        // $this->session->set_flashdata('msg' , '<div class="widget-content notify-ui"><ul id="gritter-notify"><li class="normal">'.$pesan.'</li></ul></div>');
        redirect(site_url('admin/detail_dosen/'.$id), 'refresh');
    }

    function simpan_honor($id){

        $cari = $this->db->get_where('jadwalfh', array('id' => $id))->row();
        $nama = $cari->dosen1;
        $data['nama_dosen'] = $nama;
        $data['honor_sks'] = $this->input->post('honor_sks');

        $this->db->insert('honor', $data);

        // $pesan = 'Data Berhasil Disimpan';
        // $this->session->set_flashdata('msg' , '<div class="widget-content notify-ui"><ul id="gritter-notify"><li class="normal">'.$pesan.'</li></ul></div>');
        redirect(site_url('admin/detail_dosen/'.$id), 'refresh');
    }

    function update_honor($id){

        $honor_id = $this->input->post('id');
        $data['honor_sks'] = $this->input->post('honor_sks');

        $this->db->where('id', $honor_id);
        $this->db->update('honor', $data);
        // $this->session->set_flashdata('flash_message' , 'Data Berhasil Disimpan');
        redirect(site_url('admin/detail_dosen/'.$id), 'refresh');
    }

    function detail_matkul($matkul){
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $data = str_replace('_', ' ', $matkul);
        $cari = $this->db->get_where('jadwalfh', array('nama_matkul' => $data))->result_array();

        $page_data['page_name']  = 'detail_matkul';
        $page_data['page_title'] = 'Detail Matkul';
        $page_data['lihat'] = $cari;

        $this->load->view('index', $page_data);
    }

    function matkul()
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');
            
        $matkul1 = $this->db
                        ->select('DISTINCT(kode_matkul), nama_matkul, semester')
                        ->get('jadwalfh')->result_array();

        $page_data['page_name'] = 'matkul';
        $page_data['page_title'] = 'matkul';
        $page_data['matkul'] = $matkul1;

        $this->load->view('index', $page_data);
    }

    function honor()
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $page_data['page_name'] = 'honor';
        $page_data['page_title'] = 'honor';

        $this->load->view('index', $page_data);
    }
}