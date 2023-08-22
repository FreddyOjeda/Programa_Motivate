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

    public function actividadesColaborador($idColaborador,$idActividad){
        $this->db->select('*');
        $this->db->where('idColaborador', $idColaborador);
        $this->db->where('idActividad', $idActividad);
        $query = $this->db->get('puntuacion');
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }

    public function nombreActividad($idActividad){
        $this->db->select('*');
        $this->db->where('idactividades', $idActividad);
        $query = $this->db->get('actividades');
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }

    public function top(){
        SELECT sum(puntos) as puntuacion, c.nombre, c.apellido 
FROM puntuacion p
join colaborador c on c.idcolaborador=p.idColaborador
group by p.idColaborador 
order by puntuacion desc limit 5;
    }
}
