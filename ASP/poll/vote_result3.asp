<!-- #include file="openform.inc"-->
<% 
  vote_total = 0
	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock) ,count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id") & " AND Vote.status=Yes "
if request("sub_question_id") <> 0 then
	sql = sql&" and vote.sub_question_id ="&request("sub_question_id")
end if
	rs.open sql,conn,1,3
'	if rs.eof or rs.bof then
	if rs(1) = 0 then
	response.write "<br><br><b></b><center><b>�ѧ����ա��ŧ��ṹ</b></center>"
	else
	total_stock = rs(0)
	rs.close
 %>
 <body>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    �š��ŧ��ṹ</font></b></span></td>
  </tr>
</table><br>
<% 
 	d=date()
	d=Month(d) & "/" & Day(d) & "/" & Year(d)+543
set rs =Server.CreateObject("ADODB.Recordset")
sql = "select start_time from meeting where committee_date = #"&d&"#"
rs.open sql,conn,1,3
if rs.eof or rs.bof then
stime = time()
else
stime = rs(0)
end if
rs.close

sql="SELECT sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (SELECT vote.stockholder_id  FROM Question INNER JOIN vote ON Question.question_id = vote.question_id WHERE (((vote.question_id)="  & request("question_id")-1 & ") AND ((Question.question_date)=#"&d&"#))) and Committee.committee_date =  #" &d& "#"
'Response.Write sql & "<br>"	'
rs.open sql,conn,1,3
	if rs.bof or rs.eof then
		before_stock = 0
	else 
		before_stock = rs(0)
	end if
rs.close
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (select stockholder_id from vote where status=yes and question_id = " & request("question_id") & ") and Committee.committee_date=  #" &d& "# group by agent_type order by agent_type desc"
'Response.Write sql & "<br>"	'
end if
rs.open sql,conn,1,3
if rs.eof or rs.bof  then
response.write "<br><br><center>�ѧ����ռ��ŧ����¹���������Ъ��</center>"
else
	set rs1 =Server.CreateObject("ADODB.Recordset")
		sql="SELECT distinct Committee.agent FROM  Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Stockholder.stockholder_id in (select stockholder_id from vote where question_id = " & request("question_id") & ")"
'response.Write(sql)
rs1.open sql,conn,1,3
human = 0
'response.end
do until rs1.eof or rs1.bof
	human = human+1
	rs1.movenext
loop
'response.write "<b><p align=center><font face='MS Sans Serif' size='6' color=#0000FF><span lang=th>�ռ�����������Ъ�� "&human&" �� ���繼�������</span></font></p></b>"
rs1.close
x =rs("CountOfagent_type") 
y=rs("sumstock")
   l = y * 100 / 3225546129
   		' response.Write(rs("CountOfagent_type"))
		 'response.End()
   		  rs.movenext
		  	x = x+ rs("CountOfagent_type")
	y1 = rs("sumstock")
	y = y+rs("sumstock")
	   l = y1 * 100 / 3225546129
'Response.Write before_stock & " , " & y & "<br>" '
		rs.Close
		sql="SELECT count(Committee.stockholder_id) as new_holder FROM Committee WHERE  Committee.committee_date = #" &d& "# AND Committee.committee_time > (SELECT Question.question_time FROM Question WHERE Question.question_id = " &   request("question_id")-1 &  ")"
		'response.Write(sql)
		rs.open sql,conn,1,3
		if  not rs.Eof or Isnull(rs(0)) then
			new_holder = rs(0)
		else
			new_holder = 0 
		end if
		rs.Close
	     if before_stock < y then 'Check ��Ҩӹǹ��鹡�͹˹�ҹ�����ҡ�������й����������
		 %>
<font face='MS Sans Serif' size='5' color='#0000FF'>&nbsp;&nbsp;�ռ����������������Ъ������ <%=new_holder%> ��������  �Դ�繨ӹǹ��� <%=formatnumber(y-before_stock,0)%> ��� ����ռ�����������Ъ�� <%=human%> �� ����ӹǹ��鹷�����Է���͡���§����й�� <%=formatnumber(y,0)%> ��� </font><br>
<%
end if
' Show Result vote ---------------------------------------------------------------------------------------------------------------------------------------------
	sql ="SELECT Sum(Result_vote.stock) AS SumOfstock, Count(Result_vote.stock) AS CountOfstock, Vote.sub_question_id, Sub_question.sub_question_name FROM Sub_question INNER JOIN (Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id) ON Sub_question.sub_question_id = Vote.sub_question_id WHERE (((Vote.question_id)="&request("question_id")&")) and result_vote.choice = 'Y' GROUP BY Vote.sub_question_id, Sub_question.sub_question_name, Vote.status  HAVING (Vote.status=Yes) ORDER BY Sum(Result_vote.stock) DESC, Vote.sub_question_id"
	rs.open sql,conn,1,3
	
response.write "<br><font size=+2 color=#1A6858><b>��ػ�š�����͡��駡�����ú���ѷ�ӹǹ " & rs.Recordcount & " ��ҹ ���ӴѺ������ҡ��������Ѻ��ṹ�٧�شŧ� �մѧ���</b></font>"
'	if rs.eof or rs.bof then
	if rs(1) = 0 then
	response.write "<br><br><b></b><center><b>�ѧ����ա��ŧ��ṹ</b></center>"
	else
		response.write "<br><br><table width='90%' align='center'>"
		i = 1
		do until rs.eof
		sql = "SELECT Sum(Stockholder.stock) AS sumST FROM Stockholder INNER JOIN Vote ON Stockholder.stockholder_id = Vote.stockholder_id WHERE (((Vote.question_id)="&request("question_id")&") AND ((Vote.sub_question_id)=" & rs("sub_question_id") & ") AND ((Vote.status)=Yes))"
		
		rs1.open sql,conn,1,3
		response.write "<tr><td ><b><font face='MS Sans Serif' size='4'>&nbsp;"&i&" - "&rs(3)&"</font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>���ṹ&nbsp; </font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>" & formatnumber(rs(0),0) & "&nbsp;���§ �ҡ���§������ &nbsp;" & formatnumber(rs1(0),0) &" </font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>&nbsp;�Դ��&nbsp;</font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>" & formatnumber(rs(0)/rs1(0)*100,2)  & "&nbsp;%</font></b></td></tr>"
		i = i + 1
		rs1.Close
		rs.movenext
		loop
		response.write "</table>"
	end if

 %>
<br><br>
<center><input value="        ��͹��Ѻ        "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt"></center>
<div align="center"><% 	response.end
select case rs1(1)
case "1","6" : condition = 50
case "2" : condition = 74.9999
case "3" : condition = 66.6667
end select  
'response.write "__"&summ&"__"
'response.end
if cint(summ) > condition then
	if cint(rs1(1)) > 5 then
	Set rs2=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id")&" and result_vote.choice = 'N'"
	rs2.open sql,conn,1,3
		if rs2(1) >= 25 and rs2(0)/3225546129*100 >= 10 then
			response.write "<font size=+2 color=#C63333><b>�ѧ��� �ռ������� 25 ��«�觶���������ѹ����������� 10 �ͧ�ӹǹ��鹷���˹��������Ƿ������ͧ����ѷ �Ѵ��ҹ</b></font>"
		else 
			response.write "<font size=+2 color=#1A6858 ><b>�ѧ��� �������鹷��ŧ��ṹ���§��繪ͺ �ըӹǹ�Թ���˹�觢ͧ�ӹǹ���§�������ͧ�������鹷���һ�Ъ��������Է���͡���§ �������ռ������� 25 ��«�觶���������ѹ����������� 10 �ͧ�ӹǹ��鹷���˹��������Ƿ������ͧ����ѷ �Ѵ��ҹ</b></font>"
		end if
		rs2.close
	else
	response.write "<font size=+2 color=#1A6858 ><b>�ѧ��� �������鹷��ŧ��ṹ���§��繪ͺ "
		select case rs1(1)
		case "1" : response.write " �ըӹǹ�Թ���˹�� �ͧ�ӹǹ���§�������ͧ�������鹷���һ�Ъ��������Է���͡���§ </b></font>"
		case "2" : response.write " �ըӹǹ�Թ 3 � 4 �ͧ�ӹǹ���§�������ͧ�������鹷���һ�Ъ��������Է���͡���§  </b></font>"
		case "3" : response.write " �ըӹǹ�Թ 2 � 3 �ͧ�ӹǹ���§�������ͧ�������鹷���һ�Ъ��������Է���͡���§  </b></font>"
		end select 
	end if
else
	response.write "<font size=+2 color=#C63333><b>"
		select case rs1(1)
		case "1","6" : response.write "�ѧ��� �������鹷��ŧ��ṹ���§�����繪ͺ �ըӹǹ�Թ���˹�� �ͧ�ӹǹ���§�������ͧ�������鹷���һ�Ъ��������Է���͡���§ </b></font>"
		case "2" : response.write "�ѧ��� �������鹷��ŧ��ṹ���§��繪ͺ �ըӹǹ����Թ 3 � 4 �ͧ�ӹǹ���§�������ͧ�������鹷���һ�Ъ��������Է���͡���§  </b></font>"
		case "3" : response.write "�ѧ��� �������鹷��ŧ��ṹ���§��繪ͺ �ըӹǹ����Թ 2 � 3 �ͧ�ӹǹ���§�������ͧ�������鹷���һ�Ъ��������Է���͡���§  </b></font>"
		end select 
	end if
	rs1.close
End If 
%></div><br>
<br>
<center><input value="        ��͹��Ѻ        "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt"></center>
</body>