<html>
<head>
	<meta charset="TIS-620">
</head>
<%
Dim i
Dim mm(11)
	mm(0)  = "���Ҥ�"
    mm(1) = "����Ҿѹ��"
	mm(2) = "�չҤ�"
	mm(3) = "����¹"
	mm(4) = "����Ҥ�"
	mm(5) = "�Զع�¹"
	mm(6) = "�á�Ҥ�"
	mm(7) = "�ԧ�Ҥ�"
	mm(8) = "�ѹ��¹"
	mm(9) = "���Ҥ�"
	mm(10) = "��Ȩԡ�¹"
	mm(11) = "�ѹ�Ҥ�"
%>
<body bgcolor="#FFFFFF">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    �ѹ�֡��Ǣ�����С�û�Ъ��</font></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p><form action="question.asp" method="POST" name="q">
  <table border="0" cellspacing="0" width="90%" id="AutoNumber2" height="26" cellpadding="0" align="center">
    <tr>
      <td width="90%" align="center"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      �ѹ����Ъ�� : <select name="qday">
	  <%for i = 1 to 31 %>
	  <option value="<%=i%>" <%if i = day(date) then%> selected <%end if%>><%=i%></option>
	  <%next%>
	  </select>
      &nbsp;&nbsp; ��͹ : <select name="qmonth">
	  <%for i = 1 to 12 %>
	  <option value="<%=i%>" <%if month(date) = i then%> selected<%end if%>><%=mm(i-1)%></option>
	  <%next%>
</select>&nbsp;&nbsp; �� �.�. <select name="qyear">
	<%for i = 2547 to 2553%>
	  <option value="<%=i%>" <%if year(date)+543 = i then%> selected <%end if%>><%=i%></option>
	<%next%>
	 
</select> &nbsp;&nbsp; <input  type="Submit" value="    ��ŧ    "></font></b></td>
    </tr>
	</table>
	</form>
</body>
</html>
