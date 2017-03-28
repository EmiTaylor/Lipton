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

}
