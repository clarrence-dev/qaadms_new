<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function get_users() {
        $query = $this->db->get('all_users');
        // $query = $this->db->where('email_add', "qaiemgmtofficer@gmail.com")->get('all_users');
        return $query->result();
    }

    public function get_user($id) {
        $query = $this->db->where('user_id', $id)->get('all_users');
        return $query->row();
    }

    public function check_user_email($email_add) {
        $query = $this->db->where('email_add', $email_add)->get('all_users');
        return $query->result();
    }

    public function get_user_by_username($username) {
        $query = $this->db->where('username', $username)->get('all_users');
        return $query->row();
    }


    public function insert_user($data) {
        return $this->db->insert('all_users', $data);
    }

    public function update_user($id, $data) {
        $this->db->where('user_id', $id);
        return $this->db->update('all_users', $data);
    }



    public function delete_user($id) {
        $this->db->where('id', $id);
        return $this->db->delete('all_users');
    }
}
?>