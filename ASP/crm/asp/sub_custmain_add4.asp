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
<body bgcolor="#E8F8FF" onLoad="document.form1.name.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
%>
<%
	Dim cgcode
		cgcode = Request.QueryString("cgcode")
%>
<form name="form1" method="post" action="">
  <table width="350" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="35%"><div align="right"><font color="#4B0097" size="2"><strong>����</strong></font></div></td>
      <td width="65%">&nbsp;&nbsp;<input name="name" type="text" class="text" id="name" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>���ʡ��</strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="sur" type="text" class="text" id="sur" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">˹��§ҹ</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="side" type="text" class="text" id="side" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">���˹�</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="post" type="text" class="text" id="post" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>�ӹҨ��õѴ�Թ�</strong></font></div></td>
      <td>&nbsp;&nbsp;<select name="decide" id="decide">
          <option value="0">������ӹҨ��õѴ�Թ�</option>
          <option value="1">���ӹҨ��õѴ�Թ�</option>
        </select></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">���Ѿ��</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="tel" type="text" class="text" id="tel" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">fax</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="fax" type="text" class="text" id="fax" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">e-mail</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="mail" type="text" class="text" id="mail" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1">
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>"></td>
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
</body>
<script language="JavaScript">
	function dosend(){
	if(document.form1.name.value==""){
		alert('��س��кت���');
		document.form1.name.focus();
		return;
	}
	if(document.form1.side.value==""){
		alert('��س��к�˹��§ҹ');
		document.form1.side.focus();
		return;
	}
	if(document.form1.post.value==""){
		alert('��س��кص��˹�');
		document.form1.post.focus();
		return;
	}
	if(confirm('�׹�ѹ��úѹ�֡������')){
	top.RunWindow('Temp1','temp_save_sub_custmain_add4.asp');
	}	
	}
</script>
</html>
