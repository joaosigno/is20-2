<!-- #include file="openform.inc"-->
<%
stockholder_id = Request.QueryString("stockholder_id")

Set rs=Server.CreateObject("ADODB.Recordset") 
sql ="select stockholder_id, stockholder_name, stock, stockholder_group,set_group,[no] as num from stockholder where stockholder_id=" & stockholder_id
'response.write sql
'response.end
rs.open sql,conn,1,3

%>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    <span lang="th">�ѹ�֡��ª��ͼ�����������û�Ъ��</span></font></b></td>
  </tr>
</table>
<p>&nbsp;</p>
   <form action="insert_match.asp?from_page=audience3" method="post"> 
   <input type=hidden name=stockholder_id value=<%= request("stockholder_id")%>>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2" height="188">
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">���ͼ�������</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <!--- <input type="text" name="stockholder_name" size="50" value=" ---><%=rs("stockholder_name")%><!--- "> ---></font></b></td>
    </tr>
    <tr>
      <td height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">�ӴѺ�����</span> :&nbsp;&nbsp;&nbsp;</font></b></td>
      <td height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF"><%=rs("set_group") & "  " & rs("num")%></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">&nbsp; �ӹǹ���</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <!--- <input type="text" name="stock" size="22" value=" ---><%=formatnumber(rs("stock"),0)%><!--- "> ---></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="20" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;
      <span lang="th">�������������</span> :&nbsp;&nbsp;&nbsp;&nbsp;</font></b></td>
      <td width="50%" height="20"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
 <% If rs(3) = "1" then 
 response.write " ������ԵԺؤ����"
 elseif rs(3) = "2" then 
 response.write "Foreign Juristic Person"
 elseif rs(3) = "3"  then 
 response.write "��������ʡ�� � - �"
 elseif rs(3) = "4"  then 
 response.write "��������ʡ�� � - �"
 end if %></span></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">������������Ъ��</span> 
      :&nbsp;&nbsp;</font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
	  <% 
	  s_date=date()
	  s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
	  Set rs1=Server.CreateObject("ADODB.Recordset") 
'sql ="select distinct agent from committee where committee_date = #"&s_date&"# order by agent"
sql = "select distinct agent from committee where committee_date = #"&s_date&"# and  agent not in ( '��»�ШǺ �ѹ�Թ���','�������è�� ��ջ�����԰�آ')  order by agent"

rs1.open sql,conn,1,3 
	  response.write "<select name='agent'>"
	  response.write "<option value='����ѡ�� �س�����'>����ѡ�� �س������</option>"
	   response.write "<option value='�ҧ��ó� ���زԨ�ʶԵ'>�ҧ��ó� ���زԨ�ʶԵ</option>"
	  
	if rs1.eof or rs1.bof then
	response.write ""
	'response.end
	else
	   do until rs1.eof
	   		if rs1(0) <> "����ѡ�� �س�����" or rs1(0) <> "�ҧ��ó� ���زԨ�ʶԵ"  then
	  			response.write "<option value='"&rs1(0)&"'>"&rs1(0)&"</option>"
			end if
	  rs1.movenext
	  loop
	  end if  
	  %>		
	  </select>	
     </font></b></td>
    </tr>
    <tr>
      <td width="50%" height="20" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="checkbox" value="1" name="agent_type" checked>&nbsp;&nbsp; </font></b></td>
      <td width="50%" height="20"><b>
      <font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;: <span lang="th">
      �繵��᷹</span></font></b></td>
    </tr>
    <tr>
      <td width="100%" height="22" colspan="2"><br>
  <p align="center">  
  <input type="submit" value="         ��ŧ         " name="submit" onClick="return window.confirm('�س��ͧ��úѹ�֡������?');" style="font-family: MS Sans Serif; font-size: 10pt"> 
  <input type="reset" value=" ¡��ԡ " name="cancel" onClick="return window.confirm('�س��ͧ���¡��ԡ��úѹ�֡������?')" style="font-family: MS Sans Serif; font-size: 10pt"></p>
      </td>
    </tr>
  </table>
