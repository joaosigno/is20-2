<%@ Page CodeBehind="Industrial_Fuel_Gas.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Industrial_Fuel_Gas" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : �ٹ���ԡ���١��ҡ�ҫ�����ҵ�</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,�ٹ���ԡ���١��ҡ�ҫ�����ҵ� ������ص��ˡ�����м�Ե俿�����ͧ,��ҫ�����ҵ�,��ҫ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<% Session("CURRENT_HEADER_MENU") = "INFORMATION"
			Dim FUEL
			FUEL=Request.Item ("FUEL")
			if FUEL="" then FUEL=1
			%>
	</HEAD>
	<body>
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td height="140" background="../images/menu/banner4.jpg">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="BACKGROUND-IMAGE:url(../images/bg_sidemenu2.jpg); BACKGROUND-REPEAT:repeat-y">
									<tr>
										<td width="219" valign="top"><!--#include file="../Includes/m_info2.aspx" --></td>
										<td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><img src="../images/title_info2.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Industrial 
																Fuel Gas Piping System Standard Practice</u></strong></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" cellspacing="2" cellpadding="0" align="center">
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=2" class="T_blue12"><strong>�к�����觡�ҫ��ç�ҹ�ص��ˡ���</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=9" class="T_blue12"><strong>��÷�����л������ͧ��
																		</strong></a>
																</td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=3" class="T_blue12"><strong>����觡�ҫ��ç�ҹ</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=10" class="T_blue12"><strong>����кت�Դ�ͧ��͡�ҫ��ç�ҹ</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=4" class="T_blue12"><strong>����ҧ����觡�ҫ</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=11" class="T_blue12"><strong>��ͻ�Ժѵ�����;�����ա�ҫ����</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=5" class="T_blue12"><strong>��õ�Ǩ�ͺ��з��ͺ�к����</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a class="T_blue12" href="Industrial_Fuel_Gas.aspx?FUEL=12"><strong>ʶҹ����ѹ���¡Ѻ��ҫ�����ҵ�
																		</strong></a>
																</td>
															</tr>
															<tr>
																<td align="center" valign="top"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=6" class="T_blue12"><strong>��õ���ػ�ó����ҫ��ҡѺ<br>
																			�к�����觡�ҫ��Ҥ���ç�ҹ</strong></a></td>
																<td align="center" valign="top"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=13" class="T_blue12"><strong>���ҧ��������ö㹡���觡�ҫ<br>
																			�ͧ��� (A1 - A9)</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=7" class="T_blue12"><strong>��û�Ѻ��ا�к�������ѧ�ҡ���¡�ҫ�����к�</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=14" class="T_blue12"><strong>��äӹǳ�Ң�Ҵ��͡�ҫ��ç�ҹ</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=8" class="T_blue12"><strong>��ú��ا�ѡ���к�����觡�ҫ�</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=15" class="T_blue12"><strong>˹ѧ�����ҧ�ԧ </strong>
																	</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;<% select case FUEL
			   case 1: %></td>
												</tr>
												<tr>
													<td height="3" background="../images/information/l2.jpg"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
															<tr>
																<td width="290" valign="top"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="251" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/plant-su.jpg" width="251" height="142"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Ѻ��������ա�ùӡ�ҫ�����ҵ�������������ԧ 
																	㹡�ü�Ե�����俿�� �����俿�ҽ��¼�Ե��觻������ (���.) ����� ����ѷ ���. 
																	�ӡѴ (��Ҫ�) ����¡�è�˹��� ��ҫ� �����Ҥ�ص��ˡ��� 
																	����з�觤�����ͧ������ҫ �����ҵ� 
																	��������ԧ��᷹������ԧ��Դ��������ҡ���</td>
															</tr>
															<tr>
																<td colspan="2">&nbsp;</td>
															</tr>
															<tr>
																<td colspan="2" class="T_gray13">���. ��ҫ�����ҵ� 
																	���˹ѡ����ҡ�ҫ�����ҵ���������ԧ������Ҵ��� �դ�����ʹ����٧ 
																	�����ҧ�á��� ������ʹ��¨ҡ������ҫ�����ҵ� 
																	�е�ͧ�������������͡Ẻ���͡��ʴط����㹡�á�����ҧ �к�����觡�ҫ��駢ͧ 
																	���. ����к�����觡�ҫ��ç�ҹ�ͧ�١��� ��û�ԺѵԺ��ا�ѡ�� �к�����觡�ҫ� 
																	��ʹ����û�ԺѵԵ�����йӡ�����ػ�ó��� ��ҫ�ͧ����Ե�ػ�ó����ҫ����
																</td>
															</tr>
															<tr>
																<td colspan="2">&nbsp;</td>
															</tr>
															<tr>
																<td colspan="2" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǹ��ԡ���١��ҡ�ҫ 
																	���µ�Ҵ��ҫ�����ҵ� ��˹�ҷ������ԡ���١��������ͧ��ҧ � �ѹ��������ͧ�Ѻ 
																	��áԨ��ҫ�����ҵ� ����֧�������ԡ�ô�ҹ෤�Ԥ ����Ԫҡ�� 
																	����ʹͧ�ͺ��ͤ�����ͧ��âͧ�١������ҧ�ջ���Է���Ҿ 
																	��駹����ǹ��ԡ���١��ҡ�ҫ 
																	��Ԩ�óҨѴ��˹ѧ����й��к�����觡�ҫ��ç�ҹ�ص��ˡ������ 
																	���Ǻ����ҡ��Ǣ�ͷ���١���ʧ��� ����ͺ����ҷ����ǹ��ԡ���١��ҡ�ҫ 
																	���˹��§ҹ��� � �ͧ ���. ��駹�� �������Ƿҧ㹡�û�ԺѵԢͧ�١��� 
																	㹡�õ�����������觡�ҫ�ҡʶҹդǺ��������ѹ ����Ѵ����ҳ��ҫ (M&amp;R 
																	Station) ������ç�ҹ �����觡�ҫ���Ѻ�ػ�ó����ҫ�ͧ�١��� 
																	����Դ������ʹ��µ���ҵðҹ�ҡ�����֧�Ƿҧ��Ժѵ� 
																	������ա�û�Ѻ��ا�к�����觡�ҫ��ç�ҹ���١��ͧ ��л�ʹ����ա���� 
																	��ǹ��ԡ���١��ҡ�ҫ���µ�Ҵ��ҫ�����ҵ� ��ѧ��Ҥ����ͩ�Ѻ��� ���繢����� 
																	����ջ���ª����˹��§ҹ���� ���. ��е���١��ҡ�ҫ�����ҵ� 
																	����Ѻ����͡Ẻ��С�����ҧ�к�����觡�ҫ��ç�ҹ�ص��ˡ��� 
																	��������Դ������ʹ��µ���</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 2: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;�к�����觡�ҫ��ç�ҹ�ص��ˡ���</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">�к�����觡�ҫ��ç�ҹ��������˹ѧ��ͩ�Ѻ��� ���¶֧ 
														����觡�ҫ����ͨҡ����ǵ���ش���¢ͧʶҹ��Ѵ����ҳ��ҫ ��ФǺ��������ѹ 
														(M&amp;R Station) �֧����ǵѴ��ҫ������
														<span class="T_blue13">(Manual Shut-off Valve)</span>
														�ͧ�ػ�ó����ҫ��ç�ҹ (�ѧ�ٻ) 
														�дѺ�����ѹ��ҫ�����������ͧ����觡�ҫ��ç�ҹ ������Ҥ�õ���ҵðҹ�ͧ
														<span class="T_blue13">National Fuel Gas Code (NFPA 54-1988)</span>
														�к��������Թ 125 Psig ��ҫ�����ҵԨҡ�к���ͧ͢ ���. 
														����͡�ҡʶҹ��Ѵ����ҳ��ҫ ��ФǺ��������ѹ (M&amp;R Station) 
														���觼�ҹ����к�����觡�ҫ�ͧ�ç�ҹ���ͨ���������ػ�ó����ҫ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td align="center"><img src="../images/information/industrial1.jpg" width="450" height="200"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_blue13"><strong>1. <u>��ͻ�иҹ (Main Piping)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ͻ�иҹ 
																	(Main Piping) ���¶֧ ��͡�ҫ�����������ҡ�к���ͧ͢ʶҹդǺ��������ѹ 
																	����Ѵ����ҳ��ҫ (M&amp;R Station)</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>2. <u>������� (Branch Piping)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������� 
																	(Branch Piping) ���¶֧ ��͡�ҫ������¡�ҡ��ͻ�иҹ 
																	�����觡�ҫ����Ѻ��ͨҡ��ͻ�иҹ ���Ѻ�ػ�ó����ҫ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>3. <u>����ǻ�Ѻ�����ѹ��� (Line Pressure Regulator)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ǻ�Ѻ�����ѹ��� 
																	(Line Pressure Regulator) ���¶֧ 
																	����ǻ�Ѻ����ѹ��ҫ���Դ��������ҧʶҹդǺ��������ѹ ����Ѵ����ҳ��ҫ 
																	(M&amp;R Station) �Ѻ�ػ�ó����ҫ ���ͻ�ѺŴ�����ѹ��ҫ�ͧ�������������</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>4. <u>�ػ�ó��ͧ�ѹ�����ѹ�Թ (Protective Device)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ػ�ó������ͧ�ѹ�ѹ���� 
																	����Դ�ҡ��÷ӧҹ�Դ��Ҵ�ͧ�ػ�ó�Ǻ��������ѹ (Pressure Regulator) 
																	���������ѹ��ҫ�к�����觡�ҫ���͡�ͧ�ػ�ó��Ѻ�����ѹ�٧ 
																	���Ҩ������ػ�ó����ҫ���Ѻ����������� �ػ�ó����ͧ�ѹ�����ѹ�Թ�� 2 
																	������</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><strong>�&nbsp;<u>Relief Valve ���� Safety Relief Valve</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������ǻ�ͧ�ѹ�����ѹ��ҫ�Թ 
																				����ͤ����ѹ�ͧ��ҫ��к��դ���٧���Ҥ�ҷ�������ͧ
																				<span class="T_gray12">
																					<strong>Relief Valve</strong></span>
																				��ҫ�ж١������͡ ����Ŵ�����ѹ㹷������ǻ�ͧ�ѹ �����ѹ��ҫ�ԹẺ��� 
																				�еԴ��駷������ѹ���͡�ͧ
																				<span class="T_gray12">
																					<strong>Pressure Regulator</strong></span></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><strong>�&nbsp;<u>Shout-off Valve ���� Safety Shut-off Valve</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������ǻ�ͧ�ѹ�����ѹ��ҫ�Թ 
																				����ͤ����ѹ�ͧ��ҫ����͡�ҡ
																				<span class="T_gray12">
																					<strong>Pressure Regulator</strong></span>
																				�դ���٧���Ҥ�ҷ�������ͧ
																				<span class="T_gray12">
																					<strong>Shut-off Valve</strong></span>
																				����ǹ��лԴ�������������ҫ��ż�ҹ����ǻ�ͧ�ѹ �����ѹ��ҫ�ԹẺ��� 
																				�еԴ��駴�ҹ˹�Ңͧ
																				<span class="T_gray12">
																					<strong>Pressure Regulator</strong></span></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>5. <u>����ǵѴ��ҫ������ (Manual Shut-off Valve)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������Ƿ����㹡�� 
																	�Դ - �Դ ����������ʹ����Ѻ ���ͨ��¡�ҫ���Ѻ�ػ�ó����ҫ �·��� � � 
																	����ǹ��еԴ�������ǹ���¢ͧ������¡Ѻ�ػ�ó����ҫ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>6. <u>�ػ�ó����ҫ (Gas Utilization Equipment)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ػ�ó����ҫ 
																	(Gas Utilization Equipment) ���¶֧ �ػ�ó������ҫ��������ԧ ��
																	<span class="T_gray12">
																		<strong>Burner, Furnace, Boiler, Dryer</strong></span>
																	����ػ�ó����ҫ������Ƕ֧��� �������֧����ǻ�ѺŴ�����ѹ��ҫ�ҡ������� 
																	�ػ�ó�Ǻ�����ǹ����ͧ��ҫ����ҡ�� ��
																	<span class="T_bgray12">
																		<strong>Air, Blower, Gas-Air Mixer System</strong></span>
																	����Ҿ�����Ѻ�ػ�ó����ҫ���͵Դ���������ѧ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 3: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14"><strong>&nbsp;&nbsp;&nbsp;����觡�ҫ��ç�ҹ</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td height="20" class="T_blue13"><strong>1. 
																		��͡�˹��ͧ��ʴط������к�����觡�ҫ��ç�ҹ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13">�<strong>&nbsp;<u>��� (Piping)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ͷ������繷���觡�ҫ�ҡʶҹդǺ��������ѹ 
																				����Ѵ����ҳ��ҫ
																				<span class="T_blue13">(B&amp;R Station)</span>
																				�֧�ػ�ó����ҫ��ç�ҹ ����������� Schedule 40 �����ҧ��� 
																				�������ػ�ó���
																				<span class="T_blue13">(Fitting)</span>
																				��ͧ�Өҡ���� 㹡óբͧ�����������ػ�ó���
																				<span class="T_blue13">(Fitting)</span>
																				����ҹ����ҹ�������Ҩ�������繷���觡�ҫ�����ҵ��� ���ͧ������ 
																				�����������ػ�ó�������ҹ���դس���ѵ�����͹�ͧ���� 
																				��е�ͧ���¡�÷Ӥ������Ҵ �����駷��ͺ��͹������ҹ 
																				������硷����е�ͧ��仵���ҵðҹ�ѧ���</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">Specfication for Black and Hot-Dipped, Zine-Coated Weld and 
																							Seamless Steel Pipe, ASTM A53</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">The Standard for Weld and Seamless Wrought-Steel pipe, ANSI 
																							B36.10</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">Specification for Seamless Carbon Steel Pipe for 
																							High-Temperature Service, ASTM A106</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">Specification for Black and Hot-Dipped Zine-Coated 
																							(Galvanized) Weld and Seamless Steel Pipe for Ordinary Uses, ASTM A120</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">�<strong>&nbsp;<u>Tubing</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tubing 
																				����������Ѻ�к���͡�ҫ��ç�ҹ ����繷�����硪�Դ������ ����ҵðҹ
																				<span class="T_blue13">"Standard Specification for Electric-Resistance-Weld Coil Steel Tubing 
      for Gas and Fuel Oil Lines, ASTM A539"</span>
																				������º���</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">�<strong>&nbsp;<u>�ػ�ó��� (Fitting)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ػ�ó��� 
																				(Fitting) ��������������ʴط��Өҡ���� 
																				�ػ�ó��ͪ�Դ����ǵ�ͧ��仵���ҵðҹ
																				<span class="T_blue13">ANSI B16.3 "Malleable-Iron Threaded Fitting"</span>
																				������º��Ң�Ҵ ��Ъ�Դ�ͧ����Ƿ�� ��Т�͵�͵�ҧ � ��ͧ�������<span class="T_blue13">Ẻ����� (Taper pipe threads) ���� NPT</span>
																				���������ҵðҹ�ͧ
																				<span class="T_blue13">"Standard for Pipe Threads, General Purpose (Inch), 
      ANSI/ASME B1.20.1"</span></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">�<strong>&nbsp;<u>˹���Ź (Flange)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;˹���Ź 
																				(Flange) ����������Ѻ�������㹡�õ�ͷ���觡�ҫ �����仵���ҵðҹ
																				<span class="T_blue13">"Standard 
      for Pipe Flanges and Flanged Fittings, Steel Nickel Alloy and Other Special 
      Alloys, ANSI B16.5"</span></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">�<strong>&nbsp;<u>���� (Gasket)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ʴط����ӻ��繢ͧ��õ�ͷ�͡�ҫẺ˹���Ź 
																				�����
																				<span class="T_blue13">Neoprene</span>
																				���� ��ʴ���蹷���դس���ѵԤ���¡ѹ �������ҧ�����ҵԷӻ��� �͡�ҡ��� 
																				�Ҩ����繷��Ӵ������� ��<span class="T_blue13"> Aluminium "O" rings, 
      spiral wound metal gasket, Metal-jacketed asbestos ��� Asbestos</span>
																				���繷���ҹ�����ҹ������ ���ͷ��١�ʹ�͡�ҡ˹���Ź (Flange) 
																				����ù������ա</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. ��õ�ͷ�͡�ҫ (Pipe Connection)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_gray13"><strong>��õ�ͷ�����硷�����繷���觡�ҫ��ç�ҹ ����ö������</strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">�</td>
																						<td class="T_gray13">���͵�ͪ�Դ����� (Pipe threaded and Fitting)</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">�</td>
																						<td class="T_gray13">��˹���Ź (Flanged)s</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">�</td>
																						<td class="T_gray13">������� (Welded)</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��õ�ͷ�����硷�����繷�ͻ�иҹ 
																				������õ��Ẻ����� (Weld) �������õ�ʹ���˹���Ź ����������͡�ҫ��� 
																				������ҧ���������ҹ��÷��ͺ 
																				�������Ѻ�ͧ���������ҡ˹��§ҹ/����ѷ�����Թ��÷��ͺ��ҧ����� 
																				�����������͡�ҫ</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��õ�ͷ�����硷�����繷�����·����Ѻ�����ѹ��ҫ��ӡ��� 
																				60 Psig ����ö���͵�ͪ�Դ����� (Pipe Threaded and Fitting) 
																				��Т�Ҵ�ͧ����Ƿ���������仵�����ҧ��� 1</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><strong><u>���ҧ��� 1 Specification for thread Metallic Pipe</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13"><table width="500" border="1" cellspacing="0" cellpadding="0" height="26" align="center"
																					bordercolor="#aec9e3">
																					<tr>
																						<td height="30" colspan="3" align="center" bgcolor="#ddf9ff" class="T_blue13"><b>Iron 
																								Pipe size Approximate Length of Approximate No of Thread</b></td>
																					</tr>
																					<tr>
																						<td width="112" align="center" bgcolor="#dfefff" class="T_gray13"><strong>(Inches)</strong></td>
																						<td width="241" align="center" bgcolor="#dfefff" class="T_gray13"><strong>Thread 
																								Portion (Inches)</strong></td>
																						<td width="177" align="center" bgcolor="#dfefff" class="T_gray13"><strong>to be cut</strong></td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">1/2</td>
																									<td width="241" align="center">3/4</td>
																									<td width="177" align="center">10</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">3/4</td>
																									<td width="241" align="center">3/4</td>
																									<td width="177" align="center">10</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">1</td>
																									<td width="241" align="center">7/8</td>
																									<td width="177" align="center">10</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">11/4</td>
																									<td width="241" align="center">1</td>
																									<td width="177" align="center">11</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">11/2</td>
																									<td width="241" align="center">1</td>
																									<td width="177" align="center">11</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">2</td>
																									<td width="241" align="center">1</td>
																									<td width="177" align="center">11</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">21/2</td>
																									<td width="241" align="center">11/2</td>
																									<td width="177" align="center">12</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">3</td>
																									<td width="241" align="center">11/2</td>
																									<td width="177" align="center">12</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">4</td>
																									<td width="241" align="center">15/8</td>
																									<td width="177" align="center">13</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��õ�ͷ�����¨ҡ��ͻ�иҹ 
																				��������¡����բ�Ҵ���ǡѺ��ͻ�иҹ ��Ф�õ���¡�͡�ҡ��ͻ�иҹ�ҧ��ҹ�� 
																				���ʹ�ҹ��ҧ�ͧ���� ��з����ǹ���¢ͧ����¡���� 
																				����ѧ���������ҡѺ�ػ�ó����ҫ���ӡ���ش���»���
																				<span class="T_blue13">(Thread plug)</span>
																				������
																				<span class="T_blue13">(Cap)</span></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>3. ��Ҵ�ͧ����觡�ҫ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������硷�����觡�ҫ�����ҵ� 
																	�����������ҡʶҹդǺ��������ѹ ����Ѵ����ҳ��ҫ�֧�ش��ͧ͢�ػ�ó������ҫ
																	<span class="T_blue13">(Gas Utilization Equipment)</span>
																	�����ç�ҹ� ����ѡࡳ��㹡�����͡��Ҵ�ͧ��ʹѧ���</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/a_red.gif" width="8" height="10"></td>
																						<td class="T_gray13">��Ҵ�ͧ��ͻ�иҹ
																							<span class="T_blue13">(Main Piping)</span>
																							������ͧ�բ�Ҵ�������ö�觡�ҫ ������§��ͻ���ҳ������ͧ������ҫ�٧�ش
																							<span class="T_blue13">(Maximum Gas Demand)</span>
																							�ͧ�ػ�ó����ҫ��������ç�ҹ �����§�͵�͡�â��� 
																							���͡�����ҫ��������͹Ҥ�</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/a_red.gif" width="8" height="10"></td>
																						<td class="T_gray13">��Ҵ�ͧ�������
																							<span class="T_blue13">(Branch Pipiing)</span>
																							������ͧ�բ�Ҵ�������ö�觡�ҫ������§ ��ͻ���ҳ������ͧ������ҫ�٧�ش
																							<span class="T_blue13">(Maximum Load)</span>
																							�ͧ�ػ�ó����ҫ����ͨҡ�������</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/a_red.gif" width="8" height="10"></td>
																						<td class="T_gray13">�����ѹ��ҫ��ç�ҹ � 
																							�ش��ͧ͢�ػ�ó����ҫ�е�ͧ�٧���Ҥ����ѹ�ش���������ͧ�ػ�ó����ҫ 
																							��Ф����ѹ����٭�������ͤ����ѹ�������
																							<span class="T_blue13">(Pressure Loss)</span>
																							����Դ�ҡ��Ҵ������Ƿ�͢�͵�͢�ͧ� 
																							����������к���ͨҡ�ش�鹷ҧ�֧�ش��ͧ͢�ػ�ó����ҫ� 
																							��ͧ�͡Ẻ�������Դ�����ѹ�٭���� ���ͤ����ѹŴŧ�ҡ���� 10 % �ͧ�����ѹ�鹷ҧ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 
																				��������ö㹡���觡�ҫ�ͧ��� Schedule 40 �˹��¢ͧ�١��ȡ�ص�ҵðҹ (Standard 
																				condition,14.73 Psia, 60&deg;F) �������ѹ��ҹ 20 - 125 Psig 
																				����������Դ�����ѹ�٭��������Թ 10 % ���Ҷ��ҡ Table A1-A9</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>4. ����ҵá�ҫ� �����Ҥӹǳ�Ң�Ҵ�ͧ�к����</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������ͧ������ҫ� 
																	���ͻ���ҵá�ҫ ����ͧ�������Ѻ�ػ�ó����ҫ (Maximum Load) 
																	�Ԩ�ó���ҡ�蹻��¢����ŷ��Դ�ҡѺ�ػ�ó����ҫ 
																	��Ф�����ͧ������ҫ�٧�ش (Maximum Gas Demand) 
																	����ҡ������ͧ������ͧ������ҫ�ͧ�ػ�ó����ҫ���Դ����������������ѹ 
																	˹��¢ͧ����ҵá�ҫ�����ӹǳ�Ң�Ҵ�ͧ����觡�ҫ���
																	<span class="T_blue13">
																		<strong>Table A1-A9</strong></span>
																	��˹����Ѵ���١��ȡ�ص�ҵðҹ
																	<span class="T_blue13">(�١��ȡ�ص��ҫ�������ѹ 14.73 Psia �س����� 60 &deg; F)</span></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>5. �����ѹ��ҫ��С�äǺ��������ѹ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ѹ��ҫ��ç�ҹ 
																	� �ش��ͧ͢�ػ�ó����ҫ� ��������ͧ�Ԩ�ó���ҡ�蹻��·��Դ�ҡѺ�ػ�ó� 
																	���ҫ �����ͺ����ҡ�ç�ҹ����Ե㹡óշ��������кط���蹻��� 
																	����ͤ����ѹ��ҫ � �ش��ͧ͢�ػ�ó����ҫ�դ���٧���Ҥ�Ҥ����ѹ�٧�ش (Maximum 
																	Pressure) ����ػ�ó����ҫ� �������Դ�ҡ�����ѹ�� 
																	�ҧ����͡�ҡʶҹդǺ��������ѹ ����Ѵ����ҳ��ҫ���Դ�������ǻ�Ѻ�����ѹ��� 
																	(Line Pressure Regulator) ������������ҧ��ͻ�иҹ 
																	���ͷ�����¡Ѻ�ػ�ó����ҫ� ����Ŵ�����ѹ��ҫ ������ѡࡳ��ѧ���</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">��û�ѺŴ�����ѹ��ҫ�ҡ�дѺ�����ѹ��ҫ�٧���� 60 Psig 
																							�ҷ������ѹ�����ҧ 10-60 Psig �е�ͧ���ػ�ó��ͧ�ѹ�����ѹ�Թ (Pretective 
																							Device) �� Relief Valve ���� Shut-off Valve</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">��û�ѺŴ�����ѹ��ҫ �ҡ�дѺ�����ѹ��ҫ����ӡ��� 60 Psig 
																							�ҷ������ѹ�дѺ�ҡ���� 10 Psig �����繵�ͧ���ػ�ó��ͧ�ѹ�����ѹ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">��ͧ������ǵѴ��ҫ������ (Manual Shut-Off Valve) 
																							�Դ��駷���ҹ����Ңͧ����ǻ�Ѻ�����ѹ��� (Line Pressure Regulator)</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">��ҫ����к�� (Vent Gas) �͡�ҡ����ǻ�Ѻ�����ѹ��� (Line 
																							Pressure Regulator) �������ǻ�ͧ�ѹ�����ѹ��ҫ (Relief Valve) 
																							��ͧ�к�¼�ҹ�ҧ����к�¡�ҫ (Vent Pipe) ����¹͡�Ҥ��</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">����õԴ�������ǻ�Ѻ�����ѹ��� (Line Pressure Regulator) 
																							�ʶҹ����ҡ��͡����ҷӧҹ ������ 
																							����㹵��˹觷��١��͹�ѧ�������ʶҹ����Ҩ�Դ����������¨ҡ������</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>6. ����ǵѴ��ҫ������ (Manual Shut-off Valve)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">����Ƿ�����������ǵѴ��ҫ������ (Manual Shut-off Valve) 
																							����Ѻ�Դ-�Դ ���ͨ��¡�ҫ����ػ�ó����ҫ� ����繪�Դ Ball, Plug ���� 
																							Excentric ����������ҹ�Թ���Ҥ����ѹ����к�㹢�͡�˹��ͧ�����</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">��õԴ�������ǵѴ��ҫ�����¢ͧ������� 
																							��͹�����ҷ������ͧ���ҫ� �ء � ����ͧ ��еԴ���㹵��˹觷������������</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">��õԴ�������ǹ������͢�Ҵ�ͧ����˭���� 1 ���� 
																							��Ф����ѹ��ҫ������Թ���� 0.5 Psig</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">����Ƿ�����к�������ǩء�Թ�ͧ�к���ͻ�иҹ�ͧ������� 
																							��õԴ���㹵��˹觷������������ ����ջ����кتѴਹ 
																							����մ����Ѻ��������������������ҷӧҹ���ʹ����</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">㹡óբͧ����ͧ���ҫ� ��Ҵ�˭��� Boiler 
																							�����������Ҥ��੾�з���ռ�ѧ�Ҥ�� ��л�еٻԴ���ͺ 
																							���������ǩء�Թ����к���ʹ�ҹ��ҵ���Ҥ�âͧ�ػ�ó����ҫ</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>7. ����к�¡�ҫ (Vent Pipe)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ҵ�ͧ����к�¡�ҫ����ͨҡ����ǻ�ͧ�ѹ�����ѹ��ҫ
																	<span class="T_blue13">(Relief Valve)</span>
																	���ͷ���к�¡�ҫ
																	<span class="T_blue13">(Vent Port)</span>
																	�ͧ����ǻ�Ѻ�����ѹ��ҫ
																	<span class="T_blue13">(Pressure 
      Regulator)</span>
																	����բ�Ҵ���������� ��ͧ�����硡��Ң�Ҵ�ͧ����ǻ�ͧ�ѹ�����ѹ��ҫ
																	<span class="T_blue13">(Relief Valve)</span>
																	�����ǹ���¢ͧ����к�¡�ҫ��ͧ�٧�˹�͵���Ҥ�����ҧ���� 0.9 ���� (3 �ص) 
																	㹡óշ����ǹ���¢ͧ����к�¡�ҫ����͡��ҹ��ҧ�ͧ�Ҥ�� 
																	��ͧ��������ҧ�ҡ����Ҥ�����ҧ���� 0.9 ���� (3 �ص) 
																	��дѺ�����٧�˹�;�鹴Թ���ҧ���� 3.6 ���� (12 �ص) 
																	�������㹵��˹��˹�ͷ�ȷҧ��</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǹ���¢ͧ����к�¡�ҫ��ͧ�͡Ẻ��ͧ�ѹ�������չ�Ӣѧ 
																	��ŧ ��������š������� � �����ش��ͧ�ҧ�ͧ����к�¡�ҫ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 4: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14"><strong>&nbsp;&nbsp;&nbsp;����ҧ����觡�ҫ</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ҧ����觡�ҫ�����������ҡ
														<span class="T_blue13">M&amp;R Station</span>
														�ͧ ���. ����ö�ҧ����觡�ҫ���駡���ҧ���鹴Թ ����ҧ����˹�;�鹴Թ 
														����ҧ����觡�ҫ��� 2 Ẻ �е�ͧ�Ԩ�ó���л�ԺѵԴѧ���</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td height="20" class="T_blue13"><strong>1. ����ҧ����觡�ҫ�˹�;�鹴Թ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����觡�ҫ����ҧ�˹�;�鹴Թ�����¹͡ 
																	��������Ҥ�� ������Ѻ��û�ͧ�ѹ����Դʹ�� 
																	��੾�з�ͷ��������¹͡�Ҥ�÷�����Ѻ������͹�ҡ�ʧᴴ ��Ф�����蹨ҡ���ͧ��� 
																	���͹�ӽ���û�ͧ�ѹ����Դʹ�����Ըշ��� �����Ҩ����ʴ����ͺ���</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����觡�ҫ����ҧ�˹�;�鹴Թ������Ѻ����ִ��� 
																	�����ͧ�Ѻ
																	<span class="T_blue13">(Hangers, Support and Anchors)</span>
																	���������� ���ͻ�ͧ�ѹ����������͡��ᵡ�ѡ ��С�з������͹��ҧ � ����ִ��� 
																	���͵�Ǥ���ѹ��ͧ���ç��§�͵�͡���Ѻ���˹ѡ�ͧ����觡�ҫ ����õԴ��� 
																	�����ִ��Ǥ���ѹ�Ѻ��ᾧ �������Ǣͧ�ç�ҹ ������ҧ�٧�ش�����ҧ����ִ��� 
																	�����ͧ�Ѻ��ͧ����Թ���ҷ���к�㹵��ҧ��� 2</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>���ҧ��� 2 Spacing of Support for Piping and Tubing</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="2" align="center">
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#99cc00"></td>
																		</tr>
																		<tr>
																			<td width="244" height="25" align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Steel 
																					Pipe Size (Inches)</strong></td>
																			<td width="245" height="19" align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Spacing 
																					of Support (Feet)</strong></td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#99cc00"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">1/2 or Less</td>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">6 (1.8 ����)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">3/4 To 1</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">8 (2.5 ����)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">1 1/4 To 2 1/2</td>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">10 (3.0 ����)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">3 To 4</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">15 (4.5 ����)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">5 To 8</td>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">20 (6.0 ����)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">10 or Larger</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">25 (7.5 ����)</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">1 1/2 or larger (in Vertical)</td>
																			<td align="center" bgcolor="#f8f8f8" class="T_gray13">Every floor but not more than 
																				125% of horizontal spacing</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">Tubing for all size</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">6 (1.8 ����)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" bgcolor="#cce697"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����觡�ҫ����ҧ�˹�;�鹼�Ǩ�Ҩ÷����ö��觼�ҹ�дѺ�����٧�ͧ��� 
																	�е�ͧ�٧�鹨ҡ����������Ǣͧö��÷ء ����ö¡ (Folk lift) 
																	��Ф���ջ��º͡�дѺ�����٧�ͧ����觡�ҫ ��ШѴ������к� 
																	��������ͧ��ͧ�ѹ�ѹ���·���Դ�ҡ����������Ǩҡö����</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. ����ҧ����觡�ҫ���鹴Թ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ҧ����觡�ҫ���鹴Թ��� 
																	������硷�����繷���觡�ҫ�е�ͧ�ӡ������
																	<span class="T_blue13">(Coating or Wraping)</span>
																	������ʴط������ö��ͧ�ѹ������鹨ҡ��Թ 
																	���ͻ�ͧ�ѹ��áѴ���͹�ͧ��Ƿ������
																	<span class="T_blue13">(Corrode)</span>
																	���͵Դ����к���ͧ�ѹʹ������俿��
																	<span class="T_blue13">(Cathodic Protection)</span></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����觡�ҫ����ҧ���鹴Թ 
																	����ҧ����дѺ�����֡�����¡��� 0.8 ���� �ҡ��ѧ��� 
																	��з�ͷ��ѧ��ҹ��鹼�Ǩ�Ҩ� ��ͧ���дѺ�����֡�����¡��� 1.2 ���� 
																	��ͧ���ش����Ѻ�ҧ�����Թ��ͧ���Ѵ��Ѻ������º ���ͻ�ͧ�ѹ��÷�ش��Ǣͧ��� 
																	������Ѵ�һ�����͹
																	<span class="T_blue13">(Warning Sign)</span>
																	���ͺ͡�Ǣͧ��͡�ҫ��Թ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����觡�ҫ����ҧ���鹴Թ�������շ�ͻ�ʹ�����ͧ�ѹ����ǳ��µ�� 
																	�����ҧ�����Թ ��з���˹�ʹԹ �������� 
																	���ͻԴ��֡������ʴءѹ��ӷ���ͧ��ҧ�����ҧ����觡�ҫ�Ѻ��ͻ�͡ 
																	��з���觡�ҫ��� �ҧ���鹴Թ���ҧ��ͧ����˹�;�鹴Թ��͹����Ҥ���ç�ҹ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ҧ�����Թ 
																	�����ա����§����ҧ��ͼ�ҹ�ҹ�ҡ ��ѧ �������Ҥ�� 
																	����������͵�ͪ�Դ����ǡѺ����ҧ�����Թ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>3. ��ͤ�����ѧ㹡���ҧ��͡�ҫ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">�ҵ��Ѵ��ҫ �������ǻ�Ѻ�����ѹ��ҫ ����Ѻ�ػ�ó����ҫ 
																				�����ҧ�ҡ�ش���Դ��С��� ���ͤ�����͹���ҧ���� 0.9 ���� (3 �ص)</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">��������ǹ˹����ǹ㴢ͧ����� Ground 
																				���͵��ŧ�Թ�ͧ�к�俿��</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">��������͡�ҫ�繵�Ǥ���ѹ �ͧ�Ѻ �����ִ��Тͧ�к������� 
																				�</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">����ôѴ ���ͧͷ�����硷�����繷���觡�ҫ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">����觡�ҫ��ǹ�����ش�������¹��������ë�����</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">�����ա����§����ҧ��͡�ҫ�����Ѻ����������� 
																				����к�¹�����ͼ�ҹ�к�����俿�� (Sub Station) �ͧ�ç�ҹ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 5: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��õ�Ǩ�ͺ��з��ͺ�к����</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������к�����觡�ҫ��Ҥ����ӡ�á�����ҧ�������� 
																	��зӤ������Ҵ��鹼�����㹷�� �¡�����ҫ����� 
																	���͡�ҫ���ਹ������ʡ�á�͡�ҡ��͡�ҫ���� �к���ͨе�ͧ�ӡ�÷��ͺ��������� 
																	���ͷ� Leak Test �����ҡ�� ��ҫ����� �������ਹ ���բ�鹵͹�ѧ���</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><span class="T_blue14"><u>��ͤ�����ѧ</u> :</span>&nbsp;�������ҫ�͡��ਹ㹡�÷��ͺ�����ѹ 
																	���͡��������ʡ�á����ҧ㹷���觡�ҫ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>1. <u>��÷��ͺ�����ѹ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp;<strong>�&nbsp;<u>��÷��ͺ�����ѹ��͡�ҫ�����Թ������բ�鹵͹�ѧ���</u></strong></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">1)</td>
																						<td class="T_gray13">����¡���觡��Դ�����ѹ������÷��ͺ�к������Ҥ���ç�ҹ 
																							�͡�ҡ�к���͡�ҫ�ͧ ���. ����
																							<span class="T_blue13">M&amp;R Station</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">2)</td>
																						<td class="T_gray13">��Ǩ�ͺ ���������ҷ����ǹ���¢ͧ�к���ͷ���������� 
																							����Ѻ�����ҡѺ�ػ�ó����ҫ ��ӡ�ûԴ����� �ش ���ͻԴ����˹���Ź�ֺ
																							<span class="T_blue13">(Blind flange)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">3)</td>
																						<td class="T_gray13">����÷��ͺ�����ѹ�ͧ�к������ç�ҹ�����Ѻ�ҵ��Ѵ 
																							�������ǻ�Ѻ�����ѹ��ҫ
																							<span class="T_blue13">(Pressure regulator)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">4)</td>
																						<td class="T_gray13">����к�¡�ҫ���Ǥ���
																							<span class="T_blue13">(Temporary 
                              Vent Pipe)</span>
																							���������������Ѻ����¡�ҫ�͡�ҡ�к� ��ѧ��÷��ͺ�����ѹ 
																							�е�ͧ��Ǩ�ͺ��������� ����Ƿ��Ѵ�������������к�¡�ҫ
																							<span class="T_blue13">(Vent Valve)</span>
																							����㹵��˹�
																							<span class="T_gray13">
																								<strong>"�Դ"</strong></span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">5)</td>
																						<td class="T_gray13">�ػ�ó������Ѵ�����ѹ����Ѻ��÷��ͺ ��
																							<span class="T_blue13">Chart Recorder ���� Pressure gauge </span>��ͧ���Ѻ����ͺ��º 
																							��м�ҹ����Ѵ�����ѹ ��ͧ�Ǻ��������ѹ��ҫ�����㹡�÷��ͺ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">6)</td>
																						<td class="T_gray13">�����ѹ����������������㹡�÷��ͺ �����仵��
																							<span class="T_gray13">
																								<strong>���ҧ��� 3</strong></span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">7)</td>
																						<td class="T_gray13">����ͷ��ͺ�����ѹ��ҫ�ͧ�к������Ҥ���ç�ҹ�������� 
																							������¡�ҫ����鷴�ͺ�͡�ҡ�к���� 
																							����餧���������ѹ㹷���٧���Ҥ����ѹ����ҡ�� ���ͤ����ѹ�ͧ�����ҹ
																							<span class="T_blue13">(Operating Pressure)</span></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>���ҧ��� 3. Pressure Test Requirements</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="0" align="center">
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#99cc00" class="T_green13"></td>
																		</tr>
																		<tr>
																			<td height="40" align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Working 
																					Pressure (Psi)</strong></td>
																			<td align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Pipe Diameter (Inches)</strong></td>
																			<td align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Tested Pressure (Psi)</strong></td>
																			<td align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Tested duration time 
																					(Hours)</strong></td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#99cc00" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" height="20" align="center" bgcolor="#fcfcfc" class="T_gray12">0-2</td>
																			<td width="122" align="center" bgcolor="#fcfcfc" class="T_gray12">up to 1/2</td>
																			<td width="120" align="center" bgcolor="#fcfcfc" class="T_gray12">50</td>
																			<td width="126" align="center" bgcolor="#fcfcfc" class="T_gray12">1.5</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" height="20" align="center" bgcolor="#fcfff2" class="T_gray12">0-2</td>
																			<td width="122" align="center" bgcolor="#fcfff2" class="T_gray12">1/2 to 5/8</td>
																			<td width="120" align="center" bgcolor="#fcfff2" class="T_gray12">50</td>
																			<td width="126" align="center" bgcolor="#fcfff2" class="T_gray12">2.0</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" height="20" align="center" bgcolor="#fcfcfc" class="T_gray12">2-33</td>
																			<td width="122" align="center" bgcolor="#fcfcfc" class="T_gray12">All sizes</td>
																			<td width="120" align="center" bgcolor="#fcfcfc" class="T_gray12">50</td>
																			<td width="126" align="center" bgcolor="#fcfcfc" class="T_gray12">24</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" align="center" bgcolor="#fcfff2" class="T_gray12">Over 33</td>
																			<td width="122" align="center" bgcolor="#fcfff2" class="T_gray12">All Sizes</td>
																			<td width="120" align="center" bgcolor="#fcfff2" class="T_gray12">1.5* Max 
																				operating Pressure</td>
																			<td width="126" align="center" bgcolor="#fcfff2" class="T_gray12">24</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*��÷��ͺ�����ѹ�ͧ��ͷ��������ѹ�٧���� 
																	125 Psing ��ͧ������Ҥ����ѹ����鷴�ͺ����Թ 50% �ͧ�����ѹ�٧�ش������ 
																	����</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>2. <u>��õ�Ǩ�ҵ��˹觡�����Ǣͧ����觡�ҫ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�к���ͨ��ѧ����Ҥ����ѹ����鷴�ͺ��ʹ�������ҷ���鷴�ͺ 
																	����ʴ��������ա�������Դ��� 
																	��Ҥ����ѹ��ҫŴŧ���ӡ�õ�Ǩ�ͺ�ҵ��˹觡�����Ǣͧ��ҫ����
																	<span class="T_green13">���ʺ������ Gas Detector</span></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>3. <u>��è��¡�ҫ�����ҵ�����к���ç�ҹ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ѧ�ҡ��� 
																	���. ���Ǩ�ͺ�к�������ʹ��¢ͧ��͡�ҫ��ç�ҹ 
																	����͡�õ�Ǩ������ʹ��¢ͧ�к���͡�ҫ��ç�ҹ ���Ѻ�������Ѻ����դ�����ʹ���</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp;<strong><u>��è��¡�ҫ����к��д��Թ��ôѧ���</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_org13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_org13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																						<td class="T_gray13">��ͧ�����������ǵ�ҧ � �������ҡѺ�к��������㹵��˹� 
																							"�Դ" ��͹�ӡ�è��¡�ҫ�����ҵ�����к�</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">2.</td>
																						<td class="T_gray13">�к���ͷ���èش��¡�ҫ����� ���͡�ҫ���ਹ 
																							��û�����͡�͡�Ҥ�ü�ҹ�ҧ����к�¡�ҫ���Ǥ���
																							<span class="T_blue13">(Temporary Vent Pipe)</span>
																							���Ѵ��������</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">3.</td>
																						<td class="T_gray13">�Դ���������ҫ�����ҵ�����ҫ����·���Ѵ�����к�����͡��ҹ��� 
																							Vent</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">4.</td>
																						<td class="T_gray13">�ӡ���Ѵ�����繵��ҫ��������ͧ��Ǩ�Ѵ��ҫ
																							<span class="T_blue13">(Gas Detector)</span>
																							�Ѵ�����ҫ�����ҵ� 100% LEL
																							<span class="T_blue13">(Lower Explosive Level)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">5.</td>
																						<td class="T_gray13">�������ѹ�ͧ�к���ͷ������ѹ���� 10 �ҷ� 
																							�����ҡ�����Ǣͧ��ҫ�Ҩ�ѧࡵ��ҡ�ҵ��Ѵ��ҫ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">6.</td>
																						<td class="T_gray13">��Ǩ������Ƿء�ش�ͧ��͵�͵�ҧ � ���������ѹ����</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">7.</td>
																						<td class="T_gray13">�ӡ�ûŴ����к�¡�ҫ���Ǥ��� (Temporary Vent Pipe) �͡��зӡ�� 
																							"�Դ" ����� ��з����ǹ���¢ͧ��������ӡ���ش���� "����" 
																							���ͻԴ����˹���Ź�ֺ
																							<span class="T_blue13">(Blind flange)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_org13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 6: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��õ���ػ�ó����ҫ��ҡѺ�к�����觡�ҫ��Ҥ���ç�ҹ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><strong><u>��õ���ػ�ó����ҫ��ҡѺ�к���͡�ҫ��û�ԺѵԴѧ���</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">����
																				<span class="T_blue13">(Rigid Piping)</span>
																				����ػ�ó���
																				<span class="T_blue13">(Fittings)</span>
																				��ͨҡ�к������ҡѺ����ͧ���ҫ�µç</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">����ͨ��繵�ͧ����ػ�ó����ҫ�Ѻ�к���͡�ҫ��Ҥ�������ػ�ó�
																				<span class="T_blue13">Quick-Disconnector </span>�ػ�ó����ͧ��ͨҡ����ǵѴ��ҫ������
																				<span class="T_blue13">(Manual Shut-off 
      Valve)</span>
																				����</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">3.</td>
																			<td class="T_gray13">��õ���ػ�ó����ҫ��ҡѺ�к���͡�ҫ��ͧ�������Դ��ô֧ 
																				��� �����ҧ�к���͡�ҫ�Ѻ�ػ�ó����ҫ 
																				����Ҩ������͡�ҫ�Դ������Ң�鹷���ػ�ó��� (Fittings)</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">4.</td>
																			<td class="T_gray13">����ͨ��繵�ͧ���ػ�ó���Ẻ�����١�١
																				<span class="T_blue13">(Corrugated Metal)</span>
																				��黯ԺѵԴѧ���</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">�</td>
																						<td class="T_gray13">������Թ���ؼ�ѧ ��� ����ྴҹ 
																							��õ���ػ�ó���Ẻ�����١�١ (Corrugated Metal) 
																							����͡Ѻ�к����㹺���ǳ���ǡѺ���������ͧ���ҫ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">�</td>
																						<td class="T_gray13">������Ƿ�������١�١������Թ 2 ����</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">�</td>
																						<td class="T_gray13">����͵Դ��駷�͵�������١�١�Ѻ����ͧ��������� 
																							��ͧ���ػ�ó��˹�������</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">5.</td>
																			<td class="T_gray13">��õԴ����ػ�ó�ѡ���ʡ�á��赡��ҧ����㹷�͡�ҫ
																				<span class="T_blue13">(Sediment Trap ���� Gas Filter) </span>��͹˹�Ңͧ�ش��ͧ͢�ػ�ó����ҫ 
																				���ͻ�ͧ�ѹ��蹼�����ҧ㹷�͡�ҫ���ѹ���µ���ػ�ó����ҫ</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 7: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��û�Ѻ��ا�к����� 
														��ѧ�ҡ���¡�ҫ� ����к�</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ѧ�ҡ��� 
														���. ����¡�ҫ����к���͡�ҫ��ç�ҹ 
														����ҡ�ç�ҹ�դ������繵�ͧ��Ѻ��ا�к���͡�ҫ �� 
														¡��ԡ������ºҧ������������������������ա�â����ç�ҹ��黯ԺѵԴѧ���</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td height="20" class="T_blue13"><strong>1. ���¡��ԡ������� (Removal from Service)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">�Ѵ�¡��è��¡�ҫ��ҷ��������鹷���ͧ���¡��ԡ 
																				���ͻŴ�͡�ҡ�к������
																				<span class="T_gray13">
																					<strong>"�Դ"</strong></span>
																				����ǵ鹷ҧ�ͧ����¡������鹹�� �ҡ�ش���������ش�͡�ҡ��ͻ�иҹ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">����¡�ҫ����ҧ����㹷�ͷ��¡��ԡ�͡������ҡ�ȼ�ҹ����� 
																				����û���¡�ҫ�͡��� �ҡ�ȼ�ҹ�ҧ��͵��
																				<span class="T_blue13">"Union"</span>
																				���ͼ�ҹ˹���Ź
																				<span class="T_blue13">(Flange</span>) ��Ң�Ҵ�ͧ��ͷ�� ��ͧ���¡��ԡ�͡�ҡ�к� 
																				�դ�������Թ���Ҥ�ҷ���к��
																				<span class="T_gray13">
																					<strong>���ҧ��� 4</strong></span>
																				���ӡ������ҫ����ҧ����㹷�ʹ��¡�ҫ����� ���͡�ҫ���ਹ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">�ӷ�͡�ҫ���¡��ԡ�͡�ҡ�к����������ǹ 
																				���¢ͧ�к���ͷ���͡Ѻ��鹷�ͷ��١¡��ԡ�ҡ����������������˹� 
																				�ͧ�������������˹�
																				<span class="T_gray13">
																					<strong>"�Դ"</strong></span>
																				�������ش����
																				<span class="T_gray13">
																					<strong>" ����"</strong></span>
																				���ͻԴ����˹���Ź�ֺ (Blind Flange)</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" valign="top" class="T_green13"><strong><u>���ҧ��� 4 Length of Gas Line 
																						Requiring Purging for Servicing or Modification</u></strong></td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="0" align="center">
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#99ccff"></td>
																					</tr>
																					<tr>
																						<td height="35" align="center" bgcolor="#dfefff" class="T_blue13"><strong>Norminal Pipe 
																								Size (Inches)</strong></td>
																						<td align="center" bgcolor="#dfefff" class="T_blue13"><strong>Min, Length of Piping 
																								Requiring Purging (feet)</strong></td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#99ccff"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#fbfbfb" class="T_gray13">2 1/2</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">50 (15 ����)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#f4fdff" class="T_gray13">3</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">30 (9.0 ����)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#fbfbfb" class="T_gray13">4</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">15 (4.5 ����)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#f4fdff" class="T_gray13">6</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">10 (3.0 ����)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#fbfbfb" class="T_gray13">Over 8</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">Any length</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" bgcolor="#dfefff"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. ��õ�ͷ�͡�ҫ� ���������к� (Placing in 
																		Operation)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">�Ѵ�¡��è��¡�ҫ���ǹ�ͧ������� ���ͷ�ͻ�иҹ 
																				����ǳ�ش����ͧ��õ�ͷ������ ���������к��͡�ҡ�к������Ҥ�� ��
																				<span class="T_gray13">
																					<strong>"�Դ"</strong></span>
																				����ǵ鹷ҧ ��è��¡�ҫ��ҷ������ ���ͷ�ͻ�иҹ����ͧ��èе�ͷ����������к�</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">����ա�õ���������͡�ҫ���¡�������俿�� ���͡�÷�
																				<span class="T_green13">Hot Work</span>
																				��ͧ����ҫ����ҧ����㹷�ͻ�иҹ ���ͷ��������鹷��зӡ�õ������� 
																				�͡������ҡ�ȴ��¡�ҫ����� ���͡�ҫ���ਹ �ҡ������ӡ�õ�������</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">3.</td>
																			<td class="T_gray13">�ӡ�÷��ͺ�����ѹ��͡�ҫ�������ҡѺ�к�����Ըա�÷��ͺ㹢�� 
																				4.3</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">4.</td>
																			<td class="T_gray13">��Ң�Ҵ�ͧ��ͷ��зӡ�õ�����������к��դ�������Թ��ҷ���к��
																				<span class="T_gray13">
																					<strong>���ҧ��� 5</strong></span>
																				���ӡ������ҡ�ȷ���ҧ����㹷�ʹ��¡�ҫ����� ���͡�ҫ���ਹ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" class="T_green13"><strong><u>���ҧ��� 5 Length of Piping Requiring Purging 
																						Before Placing in Operation</u></strong></td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="2">
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#99ccff" class="T_blue13"></td>
																					</tr>
																					<tr>
																						<td width="219" height="35" align="center" bgcolor="#dfefff" class="T_blue13"><strong>Norminal 
																								Pipe Size (Inches)</strong></td>
																						<td width="270" align="center" bgcolor="#dfefff" class="T_blue13"><strong>Min, Length 
																								of Piping Requiring Purging (feet)</strong></td>
																					</tr>
																					<tr>
																						<td colspan="2" align="center" bgcolor="#99ccff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">3</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">30 (9.0 ����)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">4</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">15 (4.5 ����)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">6</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">10 (3.0 ����)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">Over 8</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">Any length</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 8: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��ú��ا�ѡ���к�����觡�ҫ�</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong>�к���͡�ҫ��Ҥ���ç�ҹ�������㹤������Ţͧ�ç�ҹ 
															��ô��Թ�������ա�õ�Ǩ�ͺ������ � �µ�Ǩ�ͺ�ѧ���</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																<td class="T_gray13">��Ǩ�ͺ������Ǣͧ��ҫ (Leak) ������ǳ��͵�ͷء�ش�ء 3-6 
																	��͹</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">2.</td>
																<td class="T_gray13">��ҷ���Դ��áѴ���͹ (Corrode) ����鼹ѧ����֡�֡ 
																	����Ǩ�ͺ����˹Ңͧ��� �����ǹ���١�Ѵ���͹�֡�� 0.8 
																	��Ңͧ����˹Ңͧ������ӡ�ë���������¹�����ǹ����͡</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">3.</td>
																<td class="T_gray13">��Ǩ�ͺ��Ҿ��Ǣͧ��͡�ҫ �ҡ��ʹ������ Corrode 
																	���ӡ�ä������Ҵ��� ��з���</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 9: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��÷�����л������ͧ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��͡�ҫ���Դ��駷����¹͡������㹵���Ҥ���ç�ҹ 
														��÷������ͻ�ͧ�ѹ������� ��С���Դʹ�� �շ���������ջ�����
														<span class="T_blue13">Chlorinated 
      Rubber </span>����դس���ѵԷ���͡�áѴ���͹ ����ִ�Ѻ�������� ���������дԹ����ҡ�� 
														��з�����ѧ����ŵ�������ŵ�����ʧᴴ���</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_blue13"><strong>1. <u>����������鹼�Ƿ��</u></strong></td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">�</td>
																			<td class="T_gray13">�Ӥ������Ҵ��鹼�Ƿ�� 
																				���͢Ѵ��鹼�Ƿ�ͺ���ǳ����Դʹ��������Ҵ���֧�������� 
																				㹡óշ���鹼�Ƿ���Դ��Һ����ѹ���ͨ�ú� ���ӡ�âѴ��ҧ��������������� 
																				�����ҧ���¹��������Ҵ ��л���·��������</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">�</td>
																			<td class="T_gray13">����Ѻ��͡�ҫ�����������Ѻ��� ��е�ͧ��÷��շѺ���� 
																				����������鹼������������Һ �¢Ѵ���¡�д�ɷ�����Һ 
																				��ѧ�ҡ�����ҧ���¹�����Ҵ ��л���·��������</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>2. <u>��÷���</u></strong></td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">����Ѻ������硷������¼�ҹ��÷��� ���ͷ������ 
																				��з�͡�ҫ��������ʹ���Ѻ���������Թ��õ����� 8.1.1 �����������ͧ��鹴���
																				<span class="T_blue13">Epicon Zince rich Primer B</span>
																				����դ���˹�
																				<span class="T_blue13">D.F.T. (Dry Film Thickness)</span>
																				����ҳ 50 ����͹ ��е��������
																				<span class="T_blue13">Chlorinated Rubber</span>
																				��ѧ�ҡ����������������
																				<span class="T_blue13">Chlorinated 
      Rubber</span>
																				�Ѻ�ա���� ����˹�
																				<span class="T_blue13">D.F.T.</span>
																				�ͧ�շ�������ͧ�����¡��� 230 ����͹</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">����Ѻ��ͷ����������Ѻ���������Թ��õ����� 8.1.2 
																				����������
																				<span class="T_blue13">Chlorinated Rubber</span>
																				�Ѻ���դ���˹�
																				<span class="T_blue13">D.F.T.</span>
																				������ҳ 100 ����͹�բͧ��ͷ������稨е�ͧ�Ѻ�繼�����º 
																				��������ʡ�á�Ѻ��еԴ���� �������پ�ع ��ᵡ �ն�͡ �վͧ ��������� 
																				��һ�ҡ��������觷�����������Ǣ�ҧ�����ӡ�ë���������</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 10: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;����кت�Դ�ͧ��͡�ҫ��ç�ҹ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����͡�˹��ѭ�ѡɳ��ҵðҹ�բͧ�к���ͧ͢ 
														���. ��˹��������������� (��͹��) ��������Ѻ����Ѻ�觡�ҫ�ء��Դ 
														�����ᶺ���кت�Դ�ͧ��ҫ �¡�ҫ�����ҵԨ���������ͧ����������ͧ�Ҵ��� 
														������кص��˹ѧ���
														<span class="T_blue13">"NG"</span>
														�մ� ����١�ú͡��ȷҧ�����Ţͧ��ҫ�ء � ���� 6 ���� ���ͷء � 
														����ա������¹��Ȣͧ������ͷ���¡����</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td align="center"><img src="../images/information/pic-color1.jpg" width="281" height="34"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>��Ҵ�ͧᶺ�� ���˹ѧ��� 
																����١�ú͡��ȷҧ�����Ţͧ��ҫ��ҡ ���ҧ��� 5</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="500" border="0" cellspacing="1" cellpadding="2" height="23" align="center">
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#99cc00"></td>
															</tr>
															<tr>
																<td width="174" height="20" align="center" bgcolor="#f9ffe6" class="T_green13"><strong>��Ҵ��鹼���ٹ���ҧ���</strong></td>
																<td width="184" align="center" bgcolor="#f9ffe6" class="T_green13"><strong>��Ҵ����˹Ңͧᶺ��</strong></td>
																<td width="230" align="center" bgcolor="#f9ffe6" class="T_green13"><strong>�����٧�ͧ����ѡ�� 
																		"NG"</strong></td>
															</tr>
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#99cc00"></td>
															</tr>
															<tr>
																<td width="174" align="center" bgcolor="#fcfcfc" class="T_gray13">1-2 ����</td>
																<td width="184" align="center" bgcolor="#fcfcfc" class="T_gray13">20 ��.</td>
																<td width="230" align="center" bgcolor="#fcfcfc" class="T_gray13">������ǹ��������������</td>
															</tr>
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#b5f000"></td>
															</tr>
															<tr>
																<td width="174" align="center" bgcolor="#fdfff4" class="T_gray13">
																	2-4 ����
																</td>
																<td width="184" align="center" bgcolor="#fdfff4" class="T_gray13">20 ��.</td>
																<td width="230" align="center" bgcolor="#fdfff4" class="T_gray13">3 ��.</td>
															</tr>
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#b5f000" class="T_gray13"></td>
															</tr>
															<tr>
																<td width="174" align="center" bgcolor="#fcfcfc" class="T_gray13">�ҡ���� 4 ����</td>
																<td width="184" align="center" bgcolor="#fcfcfc" class="T_gray13">40 ��.
																</td>
																<td width="230" align="center" bgcolor="#fcfcfc" class="T_gray13">6.5 ��.</td>
															</tr>
															<tr>
																<td height="1" colspan="3" bgcolor="#b5f000"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�ٻẺ�ͧ�١�� �ʴ���ȷҧ������ ��˹����ѧ���</u></strong></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="450" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="219" class="T_blue13"><strong>A = ��Ҵ��鹼���ٹ���ҧ�ͧ���/3</strong></td>
																<td width="231"><img src="../images/information/airrow1.jpg" width="205" height="138"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>ᶺ������ͧ����վ�鹼�Ƿ�� (�պ�͹��) 
																������ͧ��º��§��Ѻ���ҵðҹ�ҡŴѧ���仹��</u></strong></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="0" align="center">
															<tr>
																<td width="163" rowspan="2" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>��Դ�ͧ��</strong></td>
																<td colspan="4" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>�ҵðҹ���ҡ�</strong></td>
															</tr>
															<tr>
																<td width="98" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>BS4800</strong></td>
																<td width="113" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>RAL</strong></td>
																<td width="89" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>CS</strong></td>
																<td width="153" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>MUNSEL</strong></td>
															</tr>
															<tr>
																<td width="163" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">�պ�͹�� 
																	(�վ�鹼�Ƿ��)</td>
																<td width="98" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">-</td>
																<td width="113" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">9006</td>
																<td width="89" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">515</td>
																<td width="153" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">-</td>
															</tr>
															<tr>
																<td width="163" align="center" bgcolor="#f4faff" class="T_gray13">ᶺ������ͧ</td>
																<td width="98" align="center" bgcolor="#f4faff" class="T_gray13">10E55</td>
																<td width="113" align="center" bgcolor="#f4faff" class="T_gray13">1003</td>
																<td width="89" align="center" bgcolor="#f4faff" class="T_gray13">622</td>
																<td width="153" align="center" bgcolor="#f4faff" class="T_gray13">31.Y 8.3 / 15.6</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ç�ҹ������к�������Ѻ��͹ 
														�������բͧ��͡�ҫ�����ҵ��Ҩ�������ǵ�ʹ�����鹷�� �����
														<span class="T_blue13">"NG"</span>
														���
														<span class="T_blue13">"�١��"</span>
														�ӡѺ�͡��ȷҧ�����Ţͧ��ҫ 
														���շ�ͷ����е�ͧ�¡����͡�ҫ�����ҵ��͡�ҡ������ � ���ҧ�Ѵਹ</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td align="center" class="T_gray13"><img src="../images/information/pic-color2.jpg" width="281" height="34"></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 11: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��ͻ�Ժѵ�����;�����ա�ҫ����</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13">&nbsp;&nbsp;<strong><u>����͵�Ǩ������ա�ҫ�����Դ�����黯ԺѵԴѧ���</u></strong></td>
															</tr>
															<tr>
																<td class="T_org13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_org13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">�Դ����Ƿ��鹷ҧ�ͧ��ͷ�辺����ա�ҫ����</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">��˹��ͺࢵ�ͧ��鹷���辺����ա�ҫ���� ����෻ 
																				������͡��������ǳ��辺��ҫ���� 
																				��¹������͹�����ؤ�ŷ���������Ǣ�ͧ���������ǳ��辺����ա�ҫ����</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">3.</td>
																			<td class="T_gray13">���Թ���������ҡ�ȶ���� ���͹���ҡ�ҫ�͡������ҡ�� 
																				�»��ԡ�ҫ�����ҵ� �������������͡�ҡ�к���ͨ�����٧�˹�;�鹴Թ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">4.</td>
																			<td class="T_gray13">��ա����§ 
																				��л�ͧ�ѹ�������Դ��С��俢��㹺���ǳ����ա�ҫ����</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">5.</td>
																			<td class="T_gray13">�ӡ�ë��� ������������Ǣͧ��ҫ</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_org13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 12: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;ʶҹ����ѹ���¡Ѻ��ҫ�����ҵ�</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��á�˹��ͺࢵ�ͧ��鹷���ѹ���� 
														�ҡ�ҵðҹ�ͧ
														<span class="T_blue13">API 500 C (American Petroleum Institute Recommended Practice 
      500 C), Classification of Locations for Electrical Installations at Pipeline 
      Transportation Facilities</span>
														��˹��ͺࢵ�ͧ��鹷���ѹ���¢ͧʶҹդǺ��������ѹ ����Ѵ����ҳ��ҫ (M&amp;R 
														Station) �ͧ�����ѹ��ҫ����Թ 275 Psig ����鹷��������������ҧ�ҡʶҹ�� 0.9 
														���� (10 �ص) ��Ф����ѹ��ҫ�ҡ���� 275 Psig ����鹷��������������ҧ�ҡʶҹ�� 
														8.4 ���� (25 �ص)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ҵðҹ�ͧ
														<span class="T_blue13">ASI 500 C</span>
														�Ѵ���ʶҹդǺ��������ѹ ����Ѵ����ҳ��ҫ ����㹻�������ʶҹ����ѹ����
														<span class="T_blue13">��������� 1 Ẻ��� 2 (Class 1 Division 2)</span>
														������͡���ػ�ó�俿��㹾�鹷��Ǻ��� ���;�鹷���ѹ�����ҵðҹ�ͧ
														<span class="T_blue13">NEC (National Electric Code, ANSI 70)</span>
														��Т�͡�˹��ҵðҹ��õԴ��駷ҧ俿������Ѻ�������
														<span class="T_blue13">(�ҵðҹ �.�.�. E.I.T. Standard 2001-30)</span>
														��˹�����ػ�ó�俿�� �ǧ�� ����Ե�ä���� 
														˹�������ʻŴ-�Ѻ�ͧ��Է��Ẻ������ ������ ��� 
														�е�ͧ������ͧ�������������Ѻ����Ѻ�ͧ����Ѻʶҹ��� - �ѹ���»�������� 1 
														Ẻ��� 1
														<span class="T_blue13">(Class 1 Division 1)</span>
														¡����ػ�ó��������ҹ������㹪�ͧ���Դ��֡����ҫ �������������� 
														�����к�ǧ�����ա�û�ͧ�ѹ���������¾�ѧ�ҹ�͡����§�� 
														���ش���Դ��ü��੾�����ҧ 㹺���ҡ������� ��Ҿ��÷ӧҹ���á��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����Թ���俨е�ͧ�Թ�������·������˹�Ẻ������� 
														��з���������俵���������ͧ��������ͧ��Է�� ����Ե �ä���� 
														����Ҩ������Դ���� ��С��� ��ͧ�ա�ûԴ��֡ 
														�����÷����㹡�ûԴ��֡��ͧ���Ѻ����Ѻ�ͧ����Ѻ��Ҿ ��С����ҹ 
														��е�ͧ�Ѵ����ա�õ��ŧ�Թ�ͧ�к�俿��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 13: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;���ҧ��������ö㹡���觡�ҫ�ͧ��� 
														(A1 - A9)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A1</strong></u> :
														<br>
														��������ö㹡���觡�ҫ�������ѹ 5 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=1"></iframe></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> :</strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A2</strong></u> :
														<br>
														��������ö㹡���觡�ҫ�������ѹ 10 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=2"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A3</strong></u> :
														<br>
														��������ö㹡���觡�ҫ�������ѹ 20 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=3"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A4</strong></u> :
														<br>
														��������ö㹡���觡�ҫ�������ѹ 25 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=4"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A5</u></strong> :
														<br>
														��������ö㹡���觡�ҫ�������ѹ 60 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=5"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A6</u></strong> :
														<br>
														��������ö㹡���觡�ҫ�������ѹ 80 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=6"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A7</u></strong> :
														<br>
														��������ö㹡���觡�ҫ�������ѹ 100 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr bgcolor="#99ccff">
													<td height="1"><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=7"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A8</u></strong> : 
														��������ö㹡���觡�ҫ�������ѹ 120 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=8"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A9</u></strong> : 
														��������ö㹡���觡�ҫ�������ѹ 125 Psig. ��� ��.��ҫ 0.779 
														����������Դ�����ѹ�٭���� 10% ��ʹ������Ƿ��</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=9"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>�����˵�</u> : </strong>
														<br>
														����ҵá�ҫ�����ҡ���ҧ�繻���ҵá�ҫ��� 14.73 Psia 60&deg; F 
														�˹����١��ȡ�ص�ҵðҹ (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong>��������ö�觡�ҫ�ͧ��� Schedule 40 �ӹǳ��ҡ�����</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="320" border="1" cellspacing="1" cellpadding="0" bordercolor="#6699cc" height="37"
															align="center">
															<tr>
																<td align="center" class="T_gray13">
																	<strong>Q = 223.7 D<sup>2.623</sup> [ (P1<sup>2</sup>-P2<sup>2</sup>) Y / Cr.L ]<sup>0.541</sup></strong>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="90%" border="0" cellspacing="1" cellpadding="2" align="center" class="T_gray13">
															<tr>
																<td>Where</td>
																<td>Q = Rate ; Cu.ft/hr at 60 F 14.73 Psia (Standard Condition)</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>D = Inside diameter of pipe; inch</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>P1 = Upstream pressure; psia</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>P2 = Downstream pressure; psia</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>T = Superexpansibility factor = 1/supercompressibility factor</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>Cr = Factor for viscosity, density and temperature = 0.00354.SG.T (Z/SG)<sup>0.152</sup></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>S = Specific gravity of gas at 60 F 30 inch of Hg</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>T = Abs temperature = 460 + F</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>Z = Viscosity of gas in centipoise = 0.012 for NG and 0.008 for Propane</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>L = Length of pipe</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 14: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��äӹǳ�Ң�Ҵ��͡�ҫ��ç�ҹ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td align="center"><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fig5.jpg" width="500" height="278"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13">�ҡ Pipe Plan �ͧ�ç�ҹ˹�� �ʴ��ѵ�ҡ�����ҫ�����ҵ� 
														������зҧ�ҡ�ش���¡�ҫ��� M&amp;R Station �������ѹ��ҫ 25 Psig 
														����Ң�Ҵ�ͧ��͡�ҫ��ç�ҹ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td class="T_gray13">��Ҥ�����͹�ͧ��ҫ�����ҵ� 940 Btu/scf ��� ��. �ͧ��ҫ�����ҵ� 
																	= 0.779 �ҡ�ѵ�ҡ�����ҫ�ͧ�蹻��¢������ػ�ó����ҫ 
																	�ӹǳ�һ���ҵá�ҫ�����
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet A 10.2 MMBtu/Hr = 10,200/940 = 10,851 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet B 2.8 MMBtu/Hr = 2,979 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet C 8.5 MMBtu/Hr = 9,043 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet D 5.2 MMBtu/scf = 5,532 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Maximum gas demand = 10,851 + 2,979 + 5,532 = 28,405 scf/Hr</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" cellspacing="2" cellpadding="0" align="center" class="T_gray13">
															<tr>
																<td width="108" valign="top" class="T_blue13"><b><u>�ҡ Table A4</u></b></td>
																<td>���зҧ�ҡ�ش���¡�ҫ - Outlet A = 50 + 70 + 35 + 55 + 28 = 238 ����<br>
																	�ѵ�ҡ�����ҫ = 10,851 scf/Hr
																</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>�ش�Ѵ�����������ͧ Table A4 (������Ƿ�� 238 ����, ����ҵá�ҫ 14,488 scf/Hr) 
																	���颹Ҵ��� = 2.5 ����</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td width="108" class="T_blue13"><b><u>�ӹͧ���ǡѹ</u></b></td>
																<td>��� Outlet B (245 ����, ����ҵá�ҫ 2,979 scf/Hr) =&gt; �����͢�Ҵ = 1.5 ����</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>��� Section A (210 ����, ����ҵá�ҫ 13,830 scf/Hr) =&gt; �����͢�Ҵ = 3.0 
																	����</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>��� Outlet C (220 ����, ����ҵá�ҫ 9,043 scf/Hr) =&gt; �����͢�Ҵ = 2.5 ����</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>��� Section B (155 ����, ����ҵá�ҫ 22,873 scf/Hr) =&gt; �����͢�Ҵ = 3.0 
																	����</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>��� Outlet D (180 ����, ����ҵá�ҫ 5,532 scf/Hr) =&gt; �����͢�Ҵ = 2.0 ����</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>��� Section C (120 ����, ����ҵá�ҫ 28,405 scf/Hr) =&gt; �����͢�Ҵ = 3.0 
																	����</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong>�ѧ��鹢�Ҵ�ͧ��͵�� Pipe Plan</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fig5.1.jpg" width="500" height="278"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 15: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;˹ѧ�����ҧ�ԧ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="25" align="center" class="T_gray13">1.</td>
																<td class="T_gray13">Natural Fuel Gas Code (ANSI Z223.1-1988 / NFPA 54-1988)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">2.</td>
																<td class="T_gray13">Natural Fuel Gas Code Handbook By Theodore C. Lemoff, P.E., 
																	First Edition</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">3.</td>
																<td class="T_gray13">Fuel Gas Piping (USAS B31.2-1968)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">4.</td>
																<td class="T_gray13">API Recommended Practice 500C</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">5.</td>
																<td class="T_gray13">Gas Transmission And Distribution Piping System (ASME 
																	B31.8-1992)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">6.</td>
																<td class="T_gray13">��͡�˹��ҵðҹ��õԴ��駷ҧ俿������Ѻ������� (�.�.�.)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">7.</td>
																<td class="T_gray13">PTT - Natural Gas Utilization Code</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">8.</td>
																<td class="T_gray13">��͡�˹��ѭ�ѡɳ��ҵðҹ�բͧ�к���� (SP.P 00013 REV.1)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">9.</td>
																<td class="T_gray13">����͡Ẻ ��С�����ҧ�к���͡�ҫ�����ç�ҹ�ص��ˡ��� 
																	(����Ԫ�� �����ѵê�¡��)</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">10.</td>
																<td class="T_gray13">�Ƿҧ��ë������ا�ѡ���к���� ����ػ�ó�ͧ�ç�ҹ����͡�ҡ 
																	Metering and Regulating �ͧ �.�.�. (��»�ժ� ��Ǿѹ���)</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<%end select %></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/footer.aspx" --></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</HTML>
