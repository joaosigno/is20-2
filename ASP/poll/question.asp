<html>
<head>
	<meta charset="TIS-620">
</head>
<form action="sub_question.asp" method="POST" name="q">
<body bgcolor="#FFFFFF">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    �ѹ�֡��Ǣ�����С�û�Ъ��</font></font></b></td>
  </tr>
</table>
<br><br>
  <table border="0" cellspacing="0" width="90%" id="AutoNumber2" height="26" cellpadding="0" align="center">
    <tr>
      <td width="90" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      �ѹ����Ъ�� : &nbsp;&nbsp;</font></b></td><td><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;
      <%
	  qdate = request("qmonth")&"/"&request("qday")&"/"&request("qyear")
	  response.write request("qday")&"/"&request("qmonth")&"/"&request("qyear")
	  response.write "<input type=Hidden name=question_date value="&qdate&">"
  	  response.write "<input type=Hidden name=qday value="&request("qday")&">"
  	  response.write "<input type=Hidden name=qmonth value="&request("qmonth")&">"
   	  response.write "<input type=Hidden name=qyear value="&request("qyear")&">"
	  %></font></b></td>
    </tr>
    <tr>
      <td width="90" align="right" valign="top" ><b><font face="MS Sans Serif" size="2" color="#0000FF">
      ��Ǣ�� : &nbsp;&nbsp;</font></b></td><td>
     &nbsp; <textarea rows="4" name="question_name" cols="100">���з�� </textarea>
&nbsp;</td>
    </tr>
	    <tr>
      <td width="90" align="right" valign="top" ><b><font face="MS Sans Serif" size="2" color="#0000FF">
      ���͹� : &nbsp;&nbsp;</font></b></td><td>
     &nbsp; <select name="condition">
	  	<option value="1">ŧ��Դ��¤�ṹ���§��ҧ�ҡ (> 50%)</option>
		<option value="4">ŧ��Դ��¤�ṹ���§��ҧ�ҡ (> 50%) ����һ�Ъ������͡���§ŧ��ṹ</option>
	  	<option value="2">ŧ��Դ��¤�ṹ���§�����¡���������� (>= 75%)</option>
		<option value="3">ŧ��Դ��¤�ṹ���§�����¡����ͧ���� (>= 66.67%)</option>
		<option value="6">ŧ��Դ��¤�ṹ���§��ҧ�ҡ �������ռ������鹵���� 25 ��«�觶���������ѹ����������� 10 �ͧ�ӹǹ��鹷���˹��������Ƿ������ͧ����ѷ�Ѵ��ҹ</option>
	  	<option value="9">ŧ��Դ��¤�ṹ���§�����¡���������� (>= 75%)  �������ռ������鹫�觶���������ѹ����������� 10 �ͧ�ӹǹ���§����������һ�Ъ���ͧ����ѷ�Ѵ��ҹ</option>
	  	<option value="10">ŧ��Դ��¤�ṹ���§�����¡���������� (>= 75% ) �������ռ������鹫�觶���������ѹ����������� 5 �ͧ�ӹǹ���§����������һ�Ъ���ͧ����ѷ�Ѵ��ҹ</option>
	  </select>
&nbsp;</td>
    </tr>
  </table>
 <center><font face="MS Sans Serif"><b><font color="#0000FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="comment" value="1" checked></font><font size="2" color="#0000FF">&nbsp; 
  �������������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </font><font color="#0000FF">
  <input type="radio" name="comment" value="2"></font><font size="2" color="#0000FF">&nbsp; 
  ����������<span lang="en-us">&nbsp;&nbsp; </span></font></b></font><b>
  <font face="MS Sans Serif" size="2" color="#0000FF">
  <input type="text" name="sub_no" size="8"><span lang="en-us">&nbsp; </span>���</font></b></center>
  <p align="center">  
  <input type="submit" value="       �ѹ�֡       " name="submit" style="font-family: MS Sans Serif; font-size: 10pt">
  <input type="reset" value="¡��ԡ" name="cancel" style="font-family: MS Sans Serif; font-size: 10pt">
  </p>
</form>
</body>
</html>