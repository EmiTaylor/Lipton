<?php
/**
 * BlackbooksController
 */
class Blackbooks extends CI_Controller{
    public function __construct(){
    parent::__construct();
    $this->load->model('Blackbooks_Model');
    $this->load->helper('url_helper');
    }
    public function index(){
        $data['books'] = $this->Blackbooks_Model->get_books();
        $data['title'] = 'Books categories';
        $this->load->view('templates/header', $data);
        $this->load->view('blackbooks/index', $data);
        $this->load->view('templates/footer');
    }
    public function view($id = NULL){
        $data['books_item'] = $this->Blackbooks_Model->get_books($id);

        if (empty($data['books_item']))
        {
            show_404();
        }
        $data['title'] = $data['books_item']['titre'];

        $this->load->view('templates/header', $data);
        $this->load->view('blackbooks/view', $data);
        $this->load->view('templates/footer');
    }
}
