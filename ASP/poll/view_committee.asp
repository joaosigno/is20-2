<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<%
 	d=date()
	d=Month(d) & "/" & Day(d) & "/" & Year(d)+543
set rs =Server.CreateObject("ADODB.Recordset")
sql = "SELECT Stockholder.stockholder_name, Stockholder.stock, Stockholder.stockholder_group, Committee.agent, Committee.agent_type FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE (((Committee.committee_date)=#"&d&"#)) ORDER BY Stockholder.stockholder_group"
'response.write sql
'response.end
rs.open sql,conn,1,3
if rs.eof or rs.bof then 
response.write "<br><br><center><b>�ѧ����ռ��ŧ����¹��һ�Ъ��</b></center>"
else
%>
<table>
<tr bgcolor="#BAD6C8">
<td>��������</td><td>�ӹǹ���</td><td>�����</td><td>�����һ�Ъ��</td><td>���᷹</td></tr>
<%
do until rs.eof
select case rs(2)
case "1","3" : bg = "#F8FFF0"
case "2","4" : bg = "#D9F9EC"
end select 
response.write "<tr bgcolor="&bg&">"
response.write "<td>"&rs(0)&"</td>"
response.write "<td align=right>"&rs(1)&"</td>"
response.write "<td align=center>"&rs(2)&"</td>"
response.write "<td>"&rs(3)&"</td>"
response.write "<td align=center>"&rs(4)&"</td>"
response.write "</tr>"
rs.movenext 
loop
response.write "</table>"
end if 
%>