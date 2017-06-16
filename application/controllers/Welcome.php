<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
* WelcomeController
*/
class Welcome extends CI_Controller {

	/*
	* index 
	*/
	public function index()
	{
		$this->load->view('welcome_message');
	}
}
