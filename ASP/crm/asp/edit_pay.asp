<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.payname.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	dim PAYNAME , PAYID
	PAYNAME = Request.QueryString("PAYNAME")
	PAYID = Request.QueryString("PAYID")
	%>
<form name="form1" method="post" action="">
  <table width="344" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="31%"><div align="right"><font color="#4B0097" size="2"><strong>�Ըա�è����Թ</strong></font></div></td>
      <td width="69%">&nbsp;&nbsp;<input name="payname" type="text" class="text" id="payname" size="30" maxlength="50" value="<%=PAYNAME%>"></td>
    </tr>
     <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="�ѹ�֡������" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  �Դ˹�ҵ�ҧ  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script languange=JavaScript>

	function dosend () 
	{
		
		if(document.form1.payname.value==""){
			alert('��س�����Ը���ѭ��');
			document.form1.payname.focus();
			return;
		}
		if(confirm('�׹�ѹ��úѹ�֡������'))
		{
		top.RunWindow('Temp1','edit_pay_name.asp?PAYNAME=' + document.form1.payname.value + '&PAYID=<%=PAYID%>');
		top.HideWindow('Dialog1');
		}
	}	
</script>

</body>
</html>
