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
      <td colspan="4" style="text-align:center;">
	  	<?php
			include("header.php");
		?>	  </td>
    </tr>
    <tr>
      <td colspan="4" style="text-align:center; background-color:#00FF00; color:#FFFFFF;">Registration Form </td>
    </tr>
    <tr>
      <td width="37%" style="text-align:center;">Name</td>
      <td width="2%" style="text-align:center;">:</td>
      <td width="15%"><label>
        <input name="t1" type="text" id="t1" />
      </label></td>
      <td width="46%" rowspan="11"><img src="image/Registration.jpg" height="300px" width="500px"/></td>
    </tr>
    <tr>
      <td style="text-align:center;">Password</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t2" type="text" id="t2" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Mobile Number </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t3" type="text" id="t3" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Email Id </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t4" type="text" id="t4" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Aadhaar Number </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t5" type="text" id="t5" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Address</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t6" type="text" id="t6" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Police Station </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t7" type="text" id="t7" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">City</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t8" type="text" id="t8" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">District</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t9" type="text" id="t9" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">State</td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t10" type="text" id="t10" />
      </label></td>
    </tr>
    <tr>
      <td style="text-align:center;">Pin Code </td>
      <td style="text-align:center;">:</td>
      <td><label>
        <input name="t11" type="text" id="t11" />
      </label></td>
    </tr>
    <tr>
      <td colspan="4"><center>
        <input name="s" type="submit" id="s" value="Save" />
		</center>
			<?php
			if(isset($_POST['s']))
			{
			mysql_connect('localhost','root','');
			mysql_select_db('crime');
			$q=mysql_query("insert into registration values('".$_POST['t1']."','".$_POST['t2']."','".$_POST['t3']."','".$_POST['t4']."','".$_POST['t5']."','".$_POST['t6']."','".$_POST['t7']."','".$_POST['t8']."','".$_POST['t9']."','".$_POST['t10']."','".$_POST['t11']."')");
			$r=mysql_query("insert into login values('".$_POST['t1']."','".$_POST['t2']."')");
			if($q>0)
			{
				echo "Record Inserted Successfully";
				if($r>0)
				{
					header("Location:login.php");
				}
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
      <td colspan="4">
	  	<?php
			include("footer.php");
		?>	  </td>
    </tr>
  </table>
</form>
</body>
</html>
