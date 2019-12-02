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