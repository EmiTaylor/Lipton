<?php

/**
 * Blackbooks Model
 */
class Blackbooks_Model extends CI_Model
{
    public function __construct(){
        $this->load->database();
    }
    public function get_books($id = FALSE){
        if ($id === FALSE) {
        $query = $this->db->get('books');
        return $query->result_array();
        }
        $query = $this->db->get_where('books', array('id' => $id));
        return $query->row_array();
    }
    public function set_books($id = 0)
	{
		$this->load->helper('url');

		$data = array(
			'title' => $this->input->post('title'),
            'auteur' => $this->input->post('auteur'),
			'categorie' => $this->input->post('categorie'),
		);
		if ($id === 0) {
			return $this->db->insert('books', $data);
		}
		else {
			$this->db->where('id', $id);
			return $this->db->update('books', $data);
		}
	}
    public function set_news($id = 0)
       {
           $this->load->helper('url');
           $data = array(
               'titre' => $this->input->post('titre'),
               'auteur' => $this->input->post('auteur'),
            //    'categorie' => $this->input->post('categorie')
           );
           if ($id == 0) {
               return $this->db->insert('books', $data);
           } else {
               $this->db->where('id', $id);
               return $this->db->update('books', $data);
           }
       }

   public function delete($id)
   {
       $this->db->where('id', $id);
       return $this->db->delete('books');
   }
}
