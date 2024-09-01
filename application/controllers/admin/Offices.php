<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Offices extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Office_model');
        $this->load->model('Department_model');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->check_role('Super Admin'); // Only allow access to admins, still to be added
    }

    public function index() {
        // Load the admin dashboard view, still to be added
        $data['offices'] = $this->Office_model->get_offices();
        $data['departments'] = $this->Department_model->get_departments_array();

        $this->load->view('admin/department_offices/offices', $data);
    }

    public function create() {
        $this->form_validation->set_rules('Office_Name', 'Office Name', 'required');

        $office_name = $this->input->post('Office_Name');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('admin/office');
        } else {
            $data = array(
                'Office_Name' => $this->input->post('Office_Name'),
                'Department_Category' => $this->input->post('Department_Category')
            );
            $this->Office_model->insert_office($data);
            redirect('admin/office');
        }
    }

    public function edit($id) {
        $data['office'] = $this->Office_model->get_office($id);

        if (empty($data['office'])) {
            show_404();
        }

        $this->form_validation->set_rules('Office_Name', 'Office Name', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('office/edit', $data);
        } else {
            $data = array(
                'Office_Name' => $this->input->post('Office_Name'),
                'Department_Category' => $this->input->post('Department_Category')
            );
            $this->Office_model->update_office($id, $data);
            redirect('admin/office');
        }
    }

    // Delete a office
    public function delete($id) {
        $this->Office_model->delete_office($id);
        redirect('admin/office');
    }
}
?>