<%@ Page Language="C#" %>
<%@ Import Namespace="System.Net" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Instance Properties</title>
<link rel="stylesheet" href="screen.css" type="text/css" media="screen" title="default" />

</head>
<body>
 
<div id="content-outer">
<!-- start content -->
<center>
<div id="content">
<table border="0" width="50%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
<th rowspan="3" class="sized"><img src="side_shadowleft.jpg" width="20" height="300" alt="" /></th>
<th class="topleft"></th>
<td id="tbl-border-top">&nbsp;</td>
<th class="topright"></th>
<th rowspan="3" class="sized"><img src="side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
<td id="tbl-border-left"></td>
<td>
<!--  start content-table-inner ...................................................................... START -->
<div id="content-table-inner">
	
<!--  start table-content  -->
<div id="table-content">


<%
//Web client
WebClient webresults = new WebClient();

// Get the instance ID from meta-data and store it in the instance_id variable 
string instance_id=webresults.DownloadString("http://169.254.169.254/latest/meta-data/instance-id");

// Get the instance public hostname from metadata and store it in the pubhostname variable
string pubhostname=webresults.DownloadString("http://169.254.169.254/latest/meta-data/public-hostname");

// Get the instance public IPv4 address from metadata and store it in the pubipv4 variable
string pubipv4=webresults.DownloadString("http://169.254.169.254/latest/meta-data/public-ipv4");

// Get the instance type from metadata and store it in the type variable
string instancetype=webresults.DownloadString("http://169.254.169.254/latest/meta-data/instance-type");

// Get the instance's availability zone from metadata and store it in the zone variable
string availzone=webresults.DownloadString("http://169.254.169.254/latest/meta-data/placement/availability-zone");
%>

<center>
<img src="awsimage1.jpeg" width="600"/>
<br/>
<br/>
<h1>Instance ID: </h1><h2><%=instance_id%></h2>
<h1>Public Hostname: </h1><h2><%=pubhostname%></h2>
<h1>Public IP Address: </h1><h2><%=pubipv4%></h2>
<h1>Instance Type: </h1><h2><%=instancetype%></h2>
<h1>Zone: </h1><h2><%=availzone%></h2>

	
</center>
			
</div>
<!--  end table-content  -->
<div class="clear"></div>
		 
</div>
<!--  end content-table-inner ............................................END  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
<th class="sized bottomleft"></th>
<td id="tbl-border-bottom">&nbsp;</td>
<th class="sized bottomright"></th>
</tr>
</table>
<div class="clear">&nbsp;</div>

</div>
</center>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer........................................................END -->

<div class="clear">&nbsp;</div>
 
</body>
</html>