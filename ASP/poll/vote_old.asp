<!-- #include file="css.css"-->
<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    �ѹ�֡�š���͡���§ŧ��ṹ</font></b></span></td>
  </tr>
</table>
<br>
<form action="vote_save.asp" method="POST" >
<input type="hidden" name="vote_id" value="<%= request("vote_id") %>" >
  <span lang="th"><b>
      <font class=f4>
  &nbsp;&nbsp;&nbsp;&nbsp;���� <%=request("question_name") %><br>
		<%			
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="SELECT Sub_question.sub_question_name FROM Sub_question INNER JOIN Vote ON Sub_question.sub_question_id = Vote.sub_question_id WHERE (((Vote.vote_id)="&request("vote_id")&"))"
			rs.open sql,conn,1,3 
			if not rs.eof or not rs.bof then
				response.write "&nbsp;&nbsp;&nbsp;&nbsp;�������� "&rs(0)&"<BR>"
			end if
			rs.close %>
			&nbsp;&nbsp;&nbsp;&nbsp;�š��ŧ��ṹ�ͧ <%= request("stockholder") %></font></b></span><br><br>
			<table width="55%" border="0" align="center">
    <tr>
      <td><b><font class=f4>
			<% 
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select stock from result_vote where vote_id = "&request("vote_id")&" and choice = 'Y'" 
			rs.open sql,conn,1,3
			 %>
      &nbsp;&nbsp;
      <span lang="th">��繪ͺ</font></td><td>
      <input type="text" name="s1" size="20" value=<% If not rs.eof or not rs.bof then response.write formatnumber(rs(0),0) end if %>><font class=f4>&nbsp;&nbsp; <b>���</b></span></font></b></td>
			<% rs.close %>
    </tr>		
		    <tr>
      <td><b><font class=f4>
			<% 
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select stock from result_vote where vote_id = "&request("vote_id")&" and choice = 'N'" 
			rs.open sql,conn,1,3
			 %>
      &nbsp;&nbsp;
      <span lang="th">�����繪ͺ</span></font></td><td>
      <input type="text" align="right" name="s2" size="20" value=<% If not rs.eof or not rs.bof then response.write formatnumber(rs(0),0) end if %>><font class=f4>&nbsp;&nbsp; <span lang="th"><b>���</b></span></font></b></td>
			<% rs.close %>
    </tr>		
		    <tr>
      <td><b><font class=f4>
			<% 
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select stock from result_vote where vote_id = "&request("vote_id")&" and choice = 'O'" 
			rs.open sql,conn,1,3
			 %>
      &nbsp;&nbsp;
      <span lang="th">���͡���§</font></td><td>
      <input type="text" name="s3" align="right"  size="20" value=<% If not rs.eof or not rs.bof then response.write formatnumber(rs(0),0) end if %>><font class=f4>&nbsp;&nbsp; <b>���</b></span></font></b></td>
			<% rs.close %>
    </tr>		
		 </table>
<br>
  <p align="center">  <input type="submit" value="          ��ŧ          " name="submit"  style="font-family: MS Sans Serif; font-size: 10pt">&nbsp;  
  <input type="reset" value=" ¡��ԡ " name="cancel" onClick="return window.confirm('�س��ͧ��úѹ�֡������?')" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
<p align="center">&nbsp;</p>
</body>
</html>