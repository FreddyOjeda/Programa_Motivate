<?php defined('BASEPATH') or exit('No direct script access allowed');
class Programa_motivate_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function login($cedula)
    {
        $this->db->select('*');
        $this->db->where('cedula', $cedula);
        $query = $this->db->get('colaborador');

        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }

    public function actividades()
    {
        $this->db->select('*');
        $query = $this->db->get('actividades');

        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }
}
