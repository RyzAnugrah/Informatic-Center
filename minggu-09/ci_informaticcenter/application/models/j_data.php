<?php defined('BASEPATH') or exit('No direct script access allowed');
class j_data extends CI_Model
{
      public function show_data()
      {
            return $this->db->get('jadwal');
      }

      function sem1(){

            $user=$this->db->query("SELECT * FROM jadwal WHERE semester=1");

            return $user;

      }  

      function sem3(){

            $user=$this->db->query("SELECT * FROM jadwal WHERE semester=3");

            return $user;

      }    
      
      function sem5(){

            $user=$this->db->query("SELECT * FROM jadwal WHERE semester=5");

            return $user;

      }    	  
}
