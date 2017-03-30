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
        $data['title'] = 'Books list';

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
    /**
	 *	Insère une nouvelle ligne dans la base de données.
	 */
	public function create($id = NULL){
        $this->load->helper('form');
        $this->load->library('form_validation');
        $data['title']='Créer un livre';

        if ($id) {
        $data['book'] = $this->Blackbooks_Model->get_books($id);
	    }

        $data['titre'] = 'Créer un nouveau livre';

        $this->form_validation->set_rules('titre', 'titre', 'required');
        $this->form_validation->set_rules('auteur', 'auteur', 'required');


        if ($this->form_validation->run() === FALSE){
            $this->load->view('templates/header', $data);
            $this->load->view('blackbooks/create');
            $this->load->view('templates/footer');
        } else {
            $this->Blackbooks_Model->set_news($id = NULL);
            redirect('blackbooks', 'refresh');
        }
    }

	/**
	 *	Récupère des données dans la base de données.
	 */
	public function read()
	{

	}

	/**
	 *	Modifie une ou plusieurs lignes dans la base de données.
	 */
	public function update()
	{

	}

	/**
	 *	Supprime une ou plusieurs lignes de la base de données.
	 */
	public function delete()
	{
        $this->Blackbooks_Model->delete($id);
        redirect('blackbooks', 'refresh');
	}
}
