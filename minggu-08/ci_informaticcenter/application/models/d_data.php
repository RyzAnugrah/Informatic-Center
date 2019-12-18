<?php defined('BASEPATH') or exit('No direct script access allowed');
class d_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('dosen');
    }
    function search_data(){

            $user=$this->db->query("select * from dosen where nama_mahasiswa like '%".$cari."%'");

            return $user;

      }    
}
