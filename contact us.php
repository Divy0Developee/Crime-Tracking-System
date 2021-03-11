<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0">
    <tr>
      <td colspan="3" style="text-align:center;">
	  	<?php
			include("header.php");
		?>	  </td>
    </tr>
    <tr>
      <td colspan="3" style="text-align:center; background-color:#00FF00; color:#FFFFFF">Contact Us</td>
    </tr>
    <tr>
      <td style="text-align:center;">User Name </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t1" type="text" id="t1" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Contact Number </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t2" type="text" id="t2" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Contact Person </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t3" type="text" id="t3" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Purpose</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t4" type="text" id="t4" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Detail</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <textarea name="t5" id="t5"></textarea>
      </label></td>
    </tr>
    <tr>
      <td colspan="3" style="text-align:center;">
        <input name="s" type="submit" id="s" value="Submit" />
		<?php
			if(isset($_POST['s']))
			{
				mysql_connect('localhost','root','');
				mysql_select_db('crime');
				$q=mysql_query("insert into contactus values('".$_POST['t1']."','".$_POST['t2']."','".$_POST['t3']."','".$_POST['t4']."','".$_POST['t5']."')");
				if($q>0)
				{
					echo "Recvord Inserted Successfully";
				}
				else
				{
					echo "Record Not Inserted";
				}
			}
		?>
   </td>
    </tr>
	<tr>
		<td colspan="3" style="text-align:center;"><a href="profile.php">Developer Profile</a></td>
	</tr>
    <tr>
      <td colspan="3" style="text-align:center;">
	  	<?php
			include("footer.php");
		?>
	  </td>
    </tr>
  </table>
</form>
</body>
</html>
