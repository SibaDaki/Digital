<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <td>User</td>
                <td>id</td>
                <td>Parent</td>
            </tr>
        </thead>
        <tbody>
       <?php
 
$user = "root";
$password = "";
 
$db = mysqli_connect('localhost', $user, $password);
if (!$db) {
    die('Not connected : ' . mysqli_error());
}
 
$dbname = "Matrix";
 
          $db_select = mysql_select_db($dbname,$db);
            if (!$db_select) {
                die("Database selection also failed miserably: " . mysql_error());
            }
 
            $results = mysql_query("SELECT user FROM users");
            while($row = mysql_fetch_array($results)) {
            ?>
                <tr>
                    <td><?php echo $row['USER']?></td>
                    <td><?php echo $row['ID']?></td>
                    <td><?php echo $row['Parent']?></td>
                </tr>
 
            <?php
            }
            ?>  
            </tbody>
            </table>
</body>
</html>