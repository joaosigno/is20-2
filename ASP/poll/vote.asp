<!-- #include file="css.css"-->
<!-- #include file="openform.inc"-->
<head>
	<meta charset="TIS-620">
		

</head>
<%
Set rs1=Server.CreateObject("ADODB.recordset")


Dim stockholder_id, question_id,sub_question_id, status
stockholder_id = request("stockholderid")
question_id = request("question_id")
sub_question_id = request("sub_question_id")
%>
	<script LANGUAGE="JavaScript">
	function validcheck(theForm)
	{
	    h_stock = theForm.stock.value
	
	    stock1 = theForm.s1.value
		//����Ң����ŷ��������繵���Ţ
		if(isNaN(stock1))
			{
				alert("��س�����繵���Ţ��ҹ��")
				 return (false);

			}
		//����Ң����ŷ��������繵���Ţ
	    stock2 = theForm.s2.value
		if(isNaN(stock2))
			{
				alert("��س�����繵���Ţ��ҹ��")
				 return (false);
			}
		//����Ң����ŷ��������繵���Ţ
	    stock3 = theForm.s3.value

			if(isNaN(stock3))
			{
				alert("��س�����繵���Ţ��ҹ��")
				 return (false);
			}
		//�������鹷�����������Թ�ӹǹ��鹷�����������
		var total = stock1*1+stock2*1+stock3*1
		if (total > h_stock) 
		{		
		    alert("�ӹǹ������ҡ���ҷ�����������");
			return (false);	
		}
			if (total < h_stock) 
		{		
		    alert("�ӹǹ����չ��¡��ҷ�����������");
			return (false);	
		}
	}
</script>
<%
if sub_question_id <> 0 then
	sql1 = "SELECT Vote.status FROM Vote WHERE Vote.stockholder_id=" & stockholder_id & " AND Vote.question_id=" & question_id & " AND Vote.sub_question_id=" & sub_question_id
elseif sub_question_id = 0 then
	sql1 = "SELECT Vote.status FROM Vote WHERE Vote.stockholder_id=" & stockholder_id & " AND Vote.question_id=" & question_id 
end if
	rs1.open sql1,conn,1,3 

	status = rs1("status")
	rs1.Close
	if status = no then%>
		<script language="javascript" >
		alert('����������¹���ѧ������Է���㹡�� Vote �ͧ���й��');
		</script>
		<%
		response.Redirect("committee_votetest.asp?question_id=" & question_id & "&sub_question_id=" & sub_question_id)
	else
%>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
	
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    �ѹ�֡�š���͡���§ŧ��ṹ</font></b></span></td>
  </tr>
</table>
<br>
<form action="vote_save.asp" method="POST" onsubmit="return validcheck(this);" >

<%



	sql1 = "SELECT Stockholder.stock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id =Committee.stockholder_id WHERE (((Stockholder.stockholder_id)=" & stockholder_id &"))"
	rs1.open sql1,conn,1,3 
    h_stock =  rs1("stock")
	rs1.close
	%>

  <span lang="th"><b>
      <font class=f4>
  &nbsp;&nbsp;&nbsp;&nbsp;���� <%
				Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select question_name from question where question_id= " & question_id
			rs.open sql,conn,1,3 
			response.write rs(0) 
			rs.close%><br>
		<%			
		Dim vote_id
		Set rs=Server.CreateObject("ADODB.recordset")

		if sub_question_id <> 0 then
			sql = "SELECT VOTE_ID FROM VOTE WHERE stockholder_id = " & stockholder_id & " AND question_id = " & question_id & " AND sub_question_id = " & sub_question_id
		elseif sub_question_id = 0 then
			sql = "SELECT VOTE_ID FROM VOTE WHERE stockholder_id = " & stockholder_id & " AND question_id = " & question_id
		end if

			

			rs.open sql,conn,1,3 
			vote_id = rs("VOTE_ID")
			rs.Close
			
			sql ="SELECT Sub_question.sub_question_name FROM Sub_question INNER JOIN Vote ON Sub_question.sub_question_id = Vote.sub_question_id WHERE (((Vote.vote_id)=" & vote_id &")) "
			rs.open sql,conn,1,3 

			if not rs.eof or not rs.bof then
				response.write "&nbsp;&nbsp;&nbsp;&nbsp;�������� "&rs(0)&"<BR>"
			end if
			rs.close %>
			&nbsp;&nbsp;&nbsp;&nbsp;�š��ŧ��ṹ�ͧ <%
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select stockholder_name from stockholder where stockholder_id="&stockholder_id
			rs.open sql,conn,1,3 
			response.write rs(0) 
			rs.close%> �ըӹǹ��鹷����� <%= formatnumber(h_stock,0) %> ���</font></b></span><br><br>
			<table width="55%" border="0" align="center">
    <tr>
      <td><b><font class=f4>
			<% 
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select stock from result_vote where vote_id = " & vote_id &" and choice = 'Y'" 
			rs.open sql,conn,1,3
			 %>
      &nbsp;&nbsp;
      <span lang="th">��繪ͺ</font></td><td>
	  <input type="hidden" name="stock" value="<%= h_stock %>" >
	 <input type="hidden" name="vote_id" value="<%= vote_id %>" >
      <input type="text" name="s1" size="20" value=<% If not rs.eof or not rs.bof then response.write rs(0) end if %>><font class=f4>&nbsp;&nbsp; <b>���</b></span></font></b></td>
			<% rs.close %>
    </tr>		
		    <tr>
      <td><b><font class=f4>
			<% 
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select stock from result_vote where vote_id = " & vote_id & " and choice = 'N'" 
			rs.open sql,conn,1,3
			 %>
      &nbsp;&nbsp;
      <span lang="th">�����繪ͺ</span></font></td><td>
      <input type="text" align="right" name="s2" size="20" value=<% If not rs.eof or not rs.bof then response.write rs(0) end if %>><font class=f4>&nbsp;&nbsp; <span lang="th"><b>���</b></span></font></b></td>
			<% rs.close %>
    </tr>		
		    <tr>
      <td><b><font class=f4>
			<% 
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select stock from result_vote where vote_id = " & vote_id & " and choice = 'O'" 
			rs.open sql,conn,1,3
			 %>
      &nbsp;&nbsp;
      <span lang="th">���͡���§</font></td><td>
      <input type="text" name="s3" align="right"  size="20" value=<% If not rs.eof or not rs.bof then response.write rs(0) end if %>><font class=f4>&nbsp;&nbsp; <b>���</b></span></font></b></td>
			<% rs.close %>
    </tr></table><br>
  <p align="center">  <input type="submit" value="          ��ŧ          " name="submit"  style="font-family: MS Sans Serif; font-size: 10pt">&nbsp;  <input type="reset" value=" ¡��ԡ " name="cancel"  style="font-family: MS Sans Serif; font-size: 10pt"> &nbsp;<input value=" ��͹��Ѻ "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
<p align="center">&nbsp;</p>
</body>
<%end if %>
</html>