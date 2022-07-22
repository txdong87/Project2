<?php
function addNew($table,$data){
    global $pdoconn;
    if(is_array($data)){
        $field="";
        $val="";
        $i=0;
        foreach($data as $key=> $value){
            if($key!="addNew"){
                $i++;
                if($i==1){
                    $field.=$key;
                    $val.="'".$value."'";
                    
                }else{
                    $field.=",".$key;
                    $val.=",'".$value."'";
                }
            }
        }
    }
    $sql="INSERT INTO $table($field)";
    $sql.="VALUES($val)";
    $query  = $pdoconn->prepare($sql);
    $query->execute();
} ?>
