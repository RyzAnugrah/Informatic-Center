<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CRUD extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	function index()
	{
		$data['ci_informaticcenter'] = $this->m_data->show_data()->result();
		$this->load->view('mahasiswa_view2019', $data);
	}
	function add()
	{
		$this->form_validation->set_rules('npm', 'npm', 'required|trim|numeric|exact_length[12]');
		$this->form_validation->set_rules('nama_mahasiswa', 'nama_mahasiswa', 'required|trim');
		$this->form_validation->set_rules('semester', 'semester', 'required|trim');
		$this->form_validation->set_rules('jenis_kelamin', 'jenis_kelamin', 'required|trim');
		$this->form_validation->set_rules('kontak', 'kontak', 'required|trim');
		$this->form_validation->set_rules('alamat', 'alamat', 'required|trim');

		if ($this->form_validation->run() == false) {
			$this->load->view('v_add');
		} else {

			$data  = [
				'npm' => $this->input->post('npm', true),
				'nama_mahasiswa' => $this->input->post('nama_mahasiswa', true),
				'semester' => $this->input->post('semester', true),
				'jenis_kelamin' => $this->input->post('jenis_kelamin', true),
				'kontak' => $this->input->post('kontak', true),
				'alamat' => $this->input->post('alamat', true),
			];

			$this->db->insert('mahasiswa', $data);

			$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Data has been added.</div>');

			redirect(base_url('mahasiswa2019'));
		}
	}

	function delete($npm)
	{

		$this->db->delete('mahasiswa', array('npm' => $npm));

		$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Successfully deleted.</div>');

		redirect(base_url('mahasiswa2019'));
	}
}