<% 
'save date in char -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
dd = right( "0"+cstr( day(date) ) ,2)
mm = right( "0"+cstr( month(date) ) ,2)
yy = cstr( year(date)+543 ) 
ginput_date=dd +"/"+mm +"/"+yy 
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
%>
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    <span lang="th">��ª��ͼ�����������û�Ъ��</span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<form action="insert_mismatchedit.asp" method="post"> 
 
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2" height="26">
    <tr>
      <td width="50%" height="1" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">&nbsp;���ͼ�������</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="150%" height="1" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="text" name="stockholder_name" size="42"></font></b></td>
    </tr>
    
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">�ӹǹ���</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="150%" height="22" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="text" name="stock" size="22"></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="2" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">�������������</span> 
      :&nbsp;&nbsp;&nbsp; <span lang="th">&nbsp;</span>&nbsp; </font></b></td>
      <td width="150%" height="2" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
      <input type="radio" name="stockholder_group" value="1"<%if agent_type="1" then response.write "checked"%>></span>&nbsp; <span lang="th">������ԵԺؤ����</span></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right">&nbsp;</td>
      <td width="150%" height="22" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
      <input type="radio" name="stockholder_group" value="2"<%if agent_type="2" then response.write "checked"%>></span>&nbsp; <span lang="th">�����</span>Foreign 
      Juristic Person</font></b></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right">&nbsp;</td>
      <td width="150%" height="22" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
      <input type="radio" name="stockholder_group" value="3"<%if agent_type="3" then response.write "checked"%>></span>&nbsp; <span lang="th">��������ʡ�� 
      � - �</span></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right">&nbsp;</td>
      <td width="150%" height="22" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
      <input type="radio" name="stockholder_group" value="4"<%if agent_type="4" then response.write "checked"%>></span>&nbsp; <span lang="th">��������ʡ�� � - �</span></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">������������Ъ��</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="150%" height="22" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="text" name="agent" size="22"></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="20" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="checkbox" value="1" name="agent_type" size="20">&nbsp;&nbsp; </font></b></td>
      <td width="150%" height="20" align="left"><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;: <span lang="th">
      �繵��᷹</span></font></b></td>
    </tr>
    
  </table>
  <p align="center">
   <br>
   <a href="insert_mismatchedit.asp">  
  <input type="submit" value="  ��ŧ" name="submit" onClick="return window.confirm('�س��ͧ��úѹ�֡������?');" style="font-family: MS Sans Serif; font-size: 10pt"> 
  <input type="reset" value="¡��ԡ" name="cancel" onClick="return window.confirm('�س��ͧ���¡��ԡ��úѹ�֡������?')" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>

</body>

</html>