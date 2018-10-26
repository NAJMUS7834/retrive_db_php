<!--Created by Najmus Seemab & Zeba Ali on 08/09/18 at 5:54pm--->
<!DOCTYPE HTML>
<html>
    <title>Read Data From Database Using PHP - First Demo Preview for our Startup </title>
	<meta name="Najmus" content="Something" />
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>

        <div class="maindiv">
            <div class="divA">
                <div class="title"><h2>Read Data Using PHP</h2></div>
                <div class="divB">
                    <div class="divD">
                        <p>Click On Menu</p>
                        <hr/>
                        <?php
						//Establishing Connection with Server
                        $connection = mysql_connect("localhost", "root", "");

						//Selecting Database
                        $db = mysql_select_db("company", $connection);

						//MySQL Query to read data
                        $query = mysql_query("select * from employee", $connection);
                        while ($row = mysql_fetch_array($query)) {
                            echo "<b><a href=\"readphp.php?id={$row['employee_id']}\">{$row['employee_name']}</a></b>";
                            echo "<br />";
                        }
                        ?>
                    </div>
                    <?php
                    if (isset($_GET['id'])) {
                        $id = $_GET['id'];
                        $query1 = mysql_query("select * from employee where employee_id=$id", $connection);
                        while ($row1 = mysql_fetch_array($query1)) {
                            ?>



                            <div class="form">
                                <h2>---Details---</h2>
                                <hr/>
                                <br><br>
								<!-- Displaying Data Read From Database -->
                                <span>Name:</span> <?php echo $row1['employee_name']; ?>
                                <br><br>
                                <span>E-mail:</span> <?php echo $row1['employee_email']; ?>
                                <br><br>
                                <span>Contact No:</span> <?php echo $row1['employee_contact']; ?>
                                <br><br>
                                <span>Address:</span> <?php echo $row1['employee_address']; ?>

                            </div>

        <?php
    }
}
?>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
	            </div>  
        </div>
    </body>
</html>
<?php
//Closing Connection with Server
mysql_close($connection);
?>
