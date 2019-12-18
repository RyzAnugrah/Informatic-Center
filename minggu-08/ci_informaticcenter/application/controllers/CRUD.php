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
		$this->load->view('dasbor_view', $data);
	}
	/*function add()
	{
		$this->form_validation->set_rules('npm', 'npm', 'required|trim|numeric|exact_length[12]');
		$this->form_validation->set_rules('nama', 'nama', 'required|trim');
		$this->form_validation->set_rules('jurusan', 'jurusan', 'required|trim');
		$this->form_validation->set_rules('kelas', 'kelas', 'required|trim');

		if ($this->form_validation->run() == false) {
			$this->load->view('v_add');
		} else {

			$data  = [
				'npm' => $this->input->post('npm', true),
				'nama' => $this->input->post('nama', true),
				'jurusan' => $this->input->post('jurusan', true),
				'kelas' => $this->input->post('kelas', true),
			];

			$this->db->insert('mahasiswa', $data);

			$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Data has been added.</div>');

			redirect(base_url());
		}
	}

	function edit($npm = null)
	{
		if ($this->session->has_userdata('npm')) {
			$npm = $this->session->flashdata('npm');
		}

		$this->form_validation->set_rules('npm', 'npm', 'required|trim|numeric|exact_length[12]');
		$this->form_validation->set_rules('nama', 'nama', 'required|trim');
		$this->form_validation->set_rules('jurusan', 'jurusan', 'required|trim');
		$this->form_validation->set_rules('kelas', 'kelas', 'required|trim');

		if ($this->form_validation->run() == false) {
			$data['mhs'] = $this->m_data->show_data_one($npm)->result();
			$this->session->set_flashdata('npm', $npm);
			$this->load->view('v_edit', $data);
		} else {
			$data  = [
				'npm' => $this->input->post('npm', true),
				'nama' => $this->input->post('nama', true),
				'jurusan' => $this->input->post('jurusan', true),
				'kelas' => $this->input->post('kelas', true),
			];

			$this->db->replace('mahasiswa', $data);

			$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Data has been updated.</div>');

			redirect(base_url());
		}

		// var_dump($data);
	}

	function delete($npm)
	{

		$this->db->delete('mahasiswa', array('npm' => $npm));

		$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Successfully deleted.</div>');

		redirect(base_url());
	}
}*/
