<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Department_model');
        $this->check_role('Super Admin'); // Only allow access to admins, still to be added
    }

    public function dashboard() {
        // Load the admin dashboard view, still to be added
        $data['departments'] = $this->Department_model->get_departments();
        $this->load->view('admin/department_offices/departments', $data);
    }
}
?>