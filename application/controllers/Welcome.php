<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Programa_motivate_model');
	}


	public function index()
	{

		$this->load->view('main/header');
		$this->load->view('welcome_message');
		$this->load->view('main/footer');
	}

	public function login()
	{
		$cedula = $this->input->post('cedula');
		$login = $this->Programa_motivate_model->login($cedula);
		if ($login) {
			$userLogin = array(
				'logueado' => TRUE,
				'idUser' => $login[0]->idcolaborador,
				'nombre' => $login[0]->nombre,
				'apellido' => $login[0]->apellido,
			);
			$this->session->set_userdata($userLogin);
			redirect('Welcome/main');
		}
	}

	public function logout()
	{
		$userLogin = array(
			'logueado' => FALSE,
		);

		$this->session->set_userdata($userLogin);
		redirect('/');
	}

	public function main()
	{
		$result['actividades'] = $this->Programa_motivate_model->actividades();
		$this->load->view('main/header');
		$this->load->view('main', $result);
		$this->load->view('main/footer');
	}

	public function activity($id)
	{
		$userID = $this->session->userdata('idUser');
		$result['detalleActividad'] = $this->Programa_motivate_model->actividadesColaborador($userID,$id);
		$result['nombreActividad'] = $this->Programa_motivate_model->nombreActividad($id);
		$this->load->view('main/header');
		$this->load->view('activity', $result);
		$this->load->view('main/footer');
	}
}
