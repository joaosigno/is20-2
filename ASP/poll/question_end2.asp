<!-- #include file="openform.inc"-->
<html>
<head>
<meta charset="TIS-620">
</head>
<body><br><br><center><b>
<% 
sql = "update question set question_time = #"&time()&"# where question_id = "&request("question_id")
conn.execute sql
response.write "�ѹ�֡��ػ���С�û�Ъ�� �. ���� "&time()
 %></b></center>
</body>
</html>
