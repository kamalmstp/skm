<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->database();
        /* cache control */
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 2010 05:00:00 GMT");
    }

    public function index() {
        if ($this->session->userdata('admin_login') == 1)
            redirect(site_url('admin/dashboard'), 'refresh');

        $this->load->view('login');
    }

    public function eror() {
        $this->load->view('layout/eror');
    }

    function validate_login(){
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $credential = array('username' => $username, 'password' => sha1($password));

        $query = $this->db->get_where('admin', $credential);
        if ($query->num_rows() > 0) {
            $row = $query->row();
            $this->session->set_userdata('admin_login', '1');
            $this->session->set_userdata('admin_id', $row->admin_id);
            $this->session->set_userdata('name', $row->name);
            $this->session->set_userdata('login_type', 'admin');
            redirect(site_url('admin/dashboard'), 'refresh');
        }

        // $this->session->set_flashdata('login_error', 'invalid_login');
        redirect(site_url('login/eror'), 'refresh');
    }

    function logout() {
        $this->session->sess_destroy();
        redirect(site_url('login'), 'refresh');
    }
}