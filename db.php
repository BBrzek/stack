<?php
    $config = include('config.php');
    $host=$config['hostname'];
    $username = $config['username'];
    $password = $config['password'];
    $dbname=$config['database'];

    $conn= new mysqli($host,$username,$password,$dbname);

    function add_logs($client, $mysqli)
    {
        $res = mysqli_query($mysqli, "SELECT id_uzytkownika FROM uzytkownicy WHERE login='$client'");
        if($res->num_rows == 1){
            while ($row = $res->fetch_assoc()) {
                $id = $row["id_uzytkownika"];
            }

            $stmt=$mysqli->prepare("INSERT INTO logi(id_uzytkownika) VALUES(?)");
            $stmt->bind_param("i",$id);
            $stmt->execute();
            $stmt->close();
        }
        else
        {
            echo "Nie znaleziono użytkownika: $client";
        }
    }

    
        $res = mysqli_query($conn, "SELECT obrazek FROM `obrazki` WHERE data_wygasniecia<NOW()") or die(mysqli_error($conn));
        mysqli_query($conn, "DELETE FROM `obrazek_kategorie` WHERE id_obrazka in(SELECT id_obrazka FROM `obrazki` WHERE data_wygasniecia<NOW())") or die(mysqli_error($conn));
        mysqli_query($conn, "DELETE FROM `polubienia` WHERE id_obrazka in((SELECT id_obrazka FROM `obrazki` WHERE data_wygasniecia<NOW()))") or die(mysqli_error($conn));
        mysqli_query($conn, "DELETE FROM `obrazki` WHERE data_wygasniecia<NOW()") or die(mysqli_error($conn));
        foreach($res as $result)
        {
            foreach($result as $value)
            {
                $file_path = $value;
                if(file_exists($file_path))
                {
                    $page_refreshed = isset($_SERVER['HTTP_CACHE_CONTROL']) && ($_SERVER['HTTP_CACHE_CONTROL'] === 'max-age=0' ||  $_SERVER['HTTP_CACHE_CONTROL'] == 'no-cache'); 
                    if($page_refreshed == 1)
                    {
                        unlink($file_path);
                    }
                    else
                    {
                        unlink($file_path);
                    }
                }
                else
                {
                    echo "Nie znaleziono pliku";
                }
            }
        }
        

?>