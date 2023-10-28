<?php
    
    function insert_taikhoan($name,$pass,$email,$adress,$phone)
    {
        $sql = "INSERT into `taikhoan` (`user` , `pass`, `email`, `address`, `tel` ) 
        values ('$name' ,'$pass', '$email','$adress', '$phone')";
        pdo_execute($sql);

    }
    function dangnhap($email, $pass)
    {
        $sql = "SELECT * FROM taikhoan WHERE email = '$email' and pass = '$pass'";
        $taikhoan = pdo_query_one($sql);
     
        if($taikhoan != false) {
            
            $_SESSION['email'] = $email;
            if($taikhoan['role'] == 0){
                header('Location: index.php');
            }
            if($taikhoan['role'] == 1){
                header('Location: admin/index.php');
            }
            // header('location: index.php');
            return  "
            <div class='alert alert-success mt-3' role='alert'>
                Thông tin tài khoản dung!
            </div>
            ";
            // header('location: index.php');
        }else{
            return "
            <div class='alert alert-danger mt-3' role='alert'>
                Thông tin tài khoản sai!
            </div>
            ";
        }
        
    }

    function dangxuat(){
        if(isset($_SESSION['email'])){
            unset($_SESSION['email']);
            header('location:index.php');
        }
    }
    function dangxuat_admin(){
        if(isset($_SESSION['email'])){
            unset($_SESSION['email']);
            header('location:../index.php');
        }
    }

    function search_id_taikhoan($email){
        $sql = "SELECT id FROM taikhoan where email = '$email'";
        $result = pdo_query_one($sql);
        extract($result);
        return $id;
    }

?>