<?php

require_once('common.class.php');

class user extends Common
{
  public $id, $firstname,$lastname,$email,$phonenumber,$location, $dateofbirth,$password,$role;
  

        public function save()
        {         
                   $this->firstname = $_POST['firstname'];
                    $this->lastname = $_POST['lastname'];
                 $this->email = $_POST['email'];
                  $this->phonenumber = $_POST['phonenumber'];
                   $this->location = $_POST['location'];      
                   $this->dateofbirth = $_POST['dateofbirth'];
                   $this->password = $_POST['password'];
                   
                    
                $sql = "insert into users (firstname,lastname,email,phonenumber,location,dateofbirth,password) values ('$this->firstname''$this->lastname',,$this->email','$this->phonenumber','$this->location','$this->dateofbirth','$this->password')"; 
                return $this->insert($sql);
        }


        public function retrieve()
        {
                $sql = "select * from users";
                return $this->select($sql);
        }


        public function destroy()
        {
                
        }


        public function edit()
        {
                
        }

       
}




?>