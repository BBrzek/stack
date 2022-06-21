<?php 
    if(isset($_POST['submit']) && isset($_POST['image']))
    {
        if(isset($_SESSION['username']))
        {
            $image = $_POST['image'];
            $user = stripslashes($_SESSION['username']);
            $user = mysqli_real_escape_string($conn,$user);
            $res = mysqli_query($conn, "SELECT p.id_uzytkownika, p.id_obrazka FROM (`polubienia` p INNER JOIN `obrazki` o ON p.id_obrazka=o.id_obrazka) JOIN `uzytkownicy` u ON p.id_uzytkownika=u.id_uzytkownika WHERE u.login='$user' and o.obrazek='$image'") or die(mysqli_error($conn));
            if(mysqli_num_rows($res)==0)
            {
                $stmt=$conn->prepare("INSERT INTO polubienia(id_obrazka, id_uzytkownika) VALUES((SELECT id_obrazka from obrazki where obrazek=?),(SELECT id_uzytkownika from uzytkownicy where login=?))");
                $stmt->bind_param("ss",$image,$user);
                $stmt->execute();
                $stmt->close();
            }
            else
            {
                $stmt=$conn->prepare("DELETE FROM polubienia WHERE id_obrazka = (SELECT id_obrazka from obrazki where obrazek=?) AND id_uzytkownika = (SELECT id_uzytkownika from uzytkownicy where login=?)");
                $stmt->bind_param("ss",$image,$user);
                $stmt->execute();
                $stmt->close();
            }

            $res = mysqli_query($conn, "select count(p.id_obrazka) from `polubienia` p INNER JOIN `obrazki` o ON p.id_obrazka=o.id_obrazka where o.obrazek='$image' ") or die(mysqli_error($conn));
        
            foreach($res as $result)
            {
                foreach($result as $value)
                {
                    echo "Liczba likeów: ".$value;
                }
            }
        }
        else
        {
            echo "Użytkownik niezalogowany!";
        }
    }
    else{
        echo "Nie wysłano formularza";
    }
?>