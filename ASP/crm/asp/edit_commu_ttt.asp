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
<body bgcolor="#E8F8FF" onLoad="document.form1.commu_ttt_name.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	dim CONAME , COID
	CONAME = Request.QueryString("CONAME")
	COID = Request.QueryString("COID")
	%>
<form name="form1" method="post" action="">
  <table width="405" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="33%"><div align="right"><font color="#4B0097" size="2"><strong>�����ɳҢͧ TT&amp;T</strong></font></div></td>
      <td width="67%">&nbsp;&nbsp;<input name="commu_ttt_name" type="text" class="text" id="commu_ttt_name" size="30" maxlength="50" value="<%=CONAME%>"></td>
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
		
		if(document.form1.commu_ttt_name.value==""){
			alert('��س�����Ը���ѭ��');
			document.form1.commu_ttt_name.focus();
			return;
		}
		if(confirm('�׹�ѹ��úѹ�֡������'))
		{
		top.RunWindow('Temp1','edit_commu_ttt_name.asp?CONAME=' + document.form1.commu_ttt_name.value + '&COID=<%=COID%>');
		top.HideWindow('Dialog1');
		}
	}	
</script>

</body>
</html>
