<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Office_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function get_offices() {
        $query = $this->db->get('z_office');
        return $query->result();
    }

    public function get_offices_array() {
        $query = $this->db->get('z_office');
        return $query->result_array();
    }


    public function get_office($id) {
        $query = $this->db->where('ID_Office', $id)->get('z_office');
        return $query->result();
    }

    public function insert_office($data) {
        return $this->db->insert('z_office', $data);
    }

    public function update_office($id, $data) {
        $this->db->where('ID_Office', $id);
        return $this->db->update('z_office', $data);
    }

    public function delete_office($id) {
        $this->db->where('ID_Office', $id);
        return $this->db->delete('z_office');
    }
}
?>