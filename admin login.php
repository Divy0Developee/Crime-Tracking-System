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
      <td colspan="3" style="text-align:center; background-color:#00FF00; color:#FFFFFF;">Admin LogIn</td>
    </tr>
    <tr>
      <td width="33%" style="text-align:center;">User Name </td>
      <td width="3%" style="text-align:center;">:</td>
      <td width="64%"><label>
        <input name="t1" type="text" id="t1" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Password</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t2" type="text" id="t2" />
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
		$q=mysql_query("select * from  adminlogin where username='".$_POST['t1']."' and password='".$_POST['t2']."' ");
		if($q>0)
		{
			header("Location:admin/cc.php");
		}
		else
		{
			echo "Record Not Inserted";
		}
		}
	  ?>
	  </td>
    </tr>
  </table>
</form>
</body>
</html>
