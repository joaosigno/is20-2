<!-- #include file="openform.inc"-->
<html>
<head>
	<title>Untitled</title><meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    �ѹ�֡������ػ���С�û�Ъ��</font></font></b></td>
  </tr>
</table>
<br>���͡���з���ͧ��úѹ�֡��ػ��û�Ъ��
<form action="question_end2.asp">
<%
 	s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
set rs =Server.CreateObject("ADODB.Recordset")
sql="Select question_id,question_name,question_time from question where question_date = #"&s_date&"#"
rs.open sql,conn,1,3
if rs.eof or rs.bof then
	response.write "<br><br><center><b>��������С�û�Ъ����ѹ���</b></center>"
	else
	response.write "<br><table width='80%' align=center><tr bgcolor=#AECBFF bordercolor=Black><td align=center><b>���С�û�Ъ��</b></td><td align=center><b>������ػ����</b></td></tr>"
	do until rs.eof
	if rs(2) = "23:59:59" then
	tt = "�ѧ���ѹ�֡"
	t1 = 1
	else 
	tt = rs(2)
	t1 = 2
	end if
	response.write "<tr><td>"
		if t1 = 1 then
		response.write "<input type=Radio value="&rs(0)&" name='question_id'>"
		else 
		response.write "&nbsp;&nbsp;&nbsp;&nbsp;"
		end if
	response.write "&nbsp;"&rs(1)&"</td><td align=center>"&tt&"</td></tr>" 
	rs.movenext
	loop
	response.write "</table>"
end if
%><br>
<div align="center"><input type="Submit" value="      �ѹ�֡      " onClick="return window.confirm('�س��ͧ��úѹ�֡����?  ')"></div>
</form>
</body>
</html>
