<%@ Page CodeBehind="Burner.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Burner" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<title>Customer Service Center : �ٹ���ԡ���١��ҡ�ҫ�����ҵ�</title>
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,�ٹ���ԡ���١��ҡ�ҫ�����ҵ� ������ص��ˡ�����м�Ե俿�����ͧ,��ҫ�����ҵ�,��ҫ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<%	
     Dim bn
	bn=Request.Item ("bn")
	if bn="" then bn=1
	%>
	</head>
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
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="219" valign="top" style="background-image:url(../images/bg_sidemenu2.jpg); background-repeat:repeat-y"><!--#include file="../Includes/m_info3.aspx" --></td>
										<td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><img src="../images/title_info3.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td class="T_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Burner 
																/ Boiler </u></strong>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=1"><strong>Burner</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=4"><strong>�����ŷ���ͧ��Һ��͹����¹�����ҫ�����ҵ�</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=2"><strong>Boiler</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=5"><strong>������ҧ��äӹǳ</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=3"><strong>�������¹����������ԧ��ҫ�����ҵ�</strong></a></td>
																<td valign="top" class="T_gray13"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><%	select case bn
	case 1: %></td>
												</tr>
												<tr>
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;Burner</td>
												</tr>
												<tr>
													<td class="text_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><table width="96%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td class="T_green13"><strong><u>�������ͧ����ͧ��� ������ 3 �������˭� 
																			�����Դ������ԧ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14">1. OIL BURNER</td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099CC"></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25" align="center"><img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">������ԧ�繢ͧ���� �� ����ѹ��, ����
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center"><img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">������ѹ�ҡ ����������ԧ�ҤҶ١ (����ѹ��)</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">��ѡ��âͧ��÷ӧҹ ��� &quot; ������ѹᵡ����ҡ����ش 
																	����������������ջ���Է���Ҿ����ó����ش &quot;</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><strong><u>���� 3 ��Դ ����ѡɳС�á�Ш�¹���ѹ�����ǩմ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.1</strong></td>
																			<td class="T_green13"><strong>Air Atomizing</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;�����ç�ѹ����ҳ 
																				9-20 Psi 㹡�ü���Ѻ������ԧ�������ͧ������ ����������ѹᵡ�������Ѻ�ҡ�� 
																				��������Է���Ҿ�٧�ش �к�����ͧ����� LPG ����ͧ㹪�ǧ�ش�������																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;������㹺�������ͧ���Ѱ����ԡ�</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.2</strong></td>
																			<td class="T_green13"><strong>Pressure Atomizing</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;���������ѹ�ç�ѹ�٧ 
																				�ٺ�Ѵ����ѹ����繽�� �����ç�ѹ 10-30 bar
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;Recommended 
																				Viscosity at Nozzle head equal 10 CST ( Temp. 120-130&deg;C )
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;���ͧ�ҡ 
																				����ѹ�١�մ�繽�����ͧ����ҡ �֧����ö�ش�ء������ ���Ե�ͧ�� Gas 
																				�ش����ͧ</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;����ͧ��俪�Դ��� 
																				����Ե�ҧ��� ����ö��Ѻ Primary Air ��� Combustion head 
																				���ͻ�Ѻ�ҡ����ǹ�Թ�� �֧������ջ���Է���Ҿ ������������ ( Excess Air 
																				����ҳ 15 % ��� CO<sub>2</sub> ����ҳ 13.5% )</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;������㹺�������ͧ����ȷҧ���û</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.3</strong></td>
																			<td class="T_green13"><strong>Rotary Cup</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;�������ǩմ����͹ 
																				2 Ẻ�á ������١���������§ (Rotary Cup) �����������ͺ�٧�ҡ 
																				����������ѹᵡ����繽��
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;������ͧ�ͧ����ѹẺ��� 
																				����������´��� 2 Ẻ�á �����ç�Ѵ�ͧ����ѹ����٧�ҡ ������������ҡ����ǹ 2 
																				(Secondary air) �Ҽ�����ͧ������</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;��ͧ����ʨش����ͧ�����ǡѺẺ��� 
																				1</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14">2. GAS BURNER</td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099CC"></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">������ԧ�����㹺�ҹ����� 2 ��Դ�˭� � ��� Natural Gas ��� 
																				LPG Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">������Է���Ҿ����������٧�ش ���ͧ�ҡ����ö��� CO<sub>2</sub>
																				�֧ 15% ��� Flue Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">����÷���ռŵ�͡�������������ԧ��͹�����ͧ������ 
																				�չ����ҡ (�س�Ҿ������ԧ��������)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">����ž��������Ҩҡ�������������ش㹨ӹǹ������ԧ������� 
																				3 ������</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">�ػ�ó����� �����к���ͧ�ѹ������Ǣͧ��ʡ�͹�����ͧ������ 
																				�� Double Solenoid Valve (�����俿�һԴ��� 2 ���) Valve Proving 
																				(����礡��������Ţͧ˹�������������俿��Ẻ�ѵ��ѵ�) �繵�</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">����ö���ͺ������Ǣͧ����������к� Sound Ness Test</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">�ػ�ó�������к� �������ҡ����͹�Ѻ�к�����ѹ</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25"><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">��Դ��ҧ � �ͧ Gas Burner</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="15"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">��Դ Low Pressure Gas (0 - 50 mbar) / Atmospheric Air</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">��Դ High Pressure Gas (2 bar) / Atmospheric Air</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">��Դ Pressure Air (25 mbar) / Low Pressure Gas ���� Air Blast 
																				(0 Psi)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">��Դ Pressure Air / Pressure Gas</td>
																		</tr>
																		<tr>
																			<td width="45" class="T_gray13" align="right">-</td>
																			<td width="15" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">��Դ��� � ���� Already Mix, Premix, Partial Premix</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14">3. DUAL BURNER</td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099CC"></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">������ͧ��俷������ö�����駹���ѹ���� ������ 
																				�����ͧ���ǡѹ</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="top" align="center" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td valign="top" class="T_gray13">���к�
																				<span class="T_blue13">Magnetic 
        Clutch</span>
																				㹡�ûŴ��е�ͻ�������ѹ�� �����к� �ó��Ѻ-����¹������ԧ 
																				��觤�͹��ҧ�����ҡ</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">�к�������͹�Ѻ�� Oil ��� Gas Burner ��������ѹ 
																				���¡��͹���ѹ ������ �� 2 ���</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">�дǡ㹡ó�������ԧ��Դ㴪�Դ˹���ջѭ��</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="top" align="center" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">�Ҥ�ᾧ���� 2 ��Դ�á�ҡ</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>��ú��ا�ѡ����Ǿ������Դ��û����Ѵ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����觷��������С�ú��ا�ѡ���ػ�ó�����ͧ��� 
																	������Ѻ��ô����ѡ�� ��е�Ǩ��������������ҧ������������ 
																	�Ъ���Ŵ������������Ѻ������ԧ ��Чҹ�������ا�ѡ��ŧ���ҡ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>�������ö�觡�ú��ا�ѡ������ͧ���������Դ�ҹ�� 3 
																			��Դ���</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" class="T_gray13">1.</td>
																			<td class="T_gray13">�ҹ�Ӥ������Ҵ (Cleaning)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">2.</td>
																			<td class="T_gray13">�ҹ��Ǩ����Ҿ��з��ͺ��÷ӧҹ (Condition Check and Function 
																				Test)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">3.</td>
																			<td class="T_gray13">�ҹ��Ǩ�Ѵ��л�Ѻ�� (Measuring and adjusting)</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><span class="T_blue13"><strong>1. �ҹ�Ӥ������Ҵ (Cleaning)</strong></span></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="1">
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="25" align="center"><img src="../images/airrow.jpg" width="6" height="8"></td>
																			<td class="T_gray13">��÷ӷء � �ѻ���� ����Ѻ�ó���Ҿ�Ǵ��������
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/airrow.jpg" width="6" height="8"></td>
																			<td class="T_gray13">��÷� 2 � 3 ����/�ѻ���� �ó���Ҿ�Ǵ�����ս�����ͧ�ҡ
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center"><img src="../images/airrow.jpg" width="6" height="8"></td>
																			<td class="T_gray13">��÷ӷء�ѹ �ó���Ҿ�Ǵ�����ս�����ͧ�ҡ 
																				�������ǹ����ҡ���ͧ��� �����͡ô</td>
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
																<td class="T_blue13"><strong>2. �ҹ��Ǩ����з��ͺ��÷ӧҹ (Condition Check and 
																		Function Test)</strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ҹ��Ǩ�� 
																	������֧��è��ѹ�֡��ҵ�ҧ � �����ҹ��ҡ�ػ�ó�, ࡨ���Ѵ��ҵ�ҧ � , ������ 
																	���ŧ�㺺ѹ�֡�Ż�Ш��ѹ
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ҹ��Ǩ�礷�����ء 
																	1 ��͹
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ҡ���ҧ 
																	�繢����š�õ�Ǩ����з��ͺ��÷ӧҹ �����駡�÷Ӥ������Ҵ����������� Burner 
																	��Դ��� ��й���ѹ ( �ٵ��ҧ��� 1 , 2 )</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14"><img src="../images/b9.GIF" width="11" height="11">&nbsp;&nbsp;<strong>GAS 
																		BURNER MAINTENANCE</strong>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="501" border="1" cellspacing="0" cellpadding="0" align="center" class="T_gray13">
																		<tr bordercolor="#FFFFFF">
																			<td height="25" colspan="2" class="T_white12" bgcolor="#0080BD"><div align="center"><strong>Work 
																						list per month</strong></div>
																		  </td>
																		</tr>
																		<tr class="T_black11" bgcolor="#0080BD">
																			<td width="82" bordercolor="#FFFFFF" bgcolor="#99CCFF"><div align="center">No.</div>
																		  </td>
																			<td width="416" bordercolor="#FFFFFF" bgcolor="#99CCFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">1.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean Ignition Electrode
																			</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">2.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean inside control panel</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">3.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean blower slot</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">4.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean regulating sleeve of control segment
																			</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">5.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean gas filter</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82">&nbsp;</td>
																			<td width="416">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF" bgcolor="#0080BD">
																			<td width="82" bgcolor="#99CCFF"><div align="center">No.</div>
																		  </td>
																			<td width="416" bgcolor="#99CCFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">1.</div>
																			</td>
																			<td width="416">Function test for gas pressure switch</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">2.</div>
																			</td>
																			<td width="416">Function test for flame detector</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">3.</div>
																			</td>
																			<td width="416">Function test of air pressure switch</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">4.</div>
																			</td>
																			<td width="416">Function test for Burner control</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">5.</div>
																			</td>
																			<td width="416">Condition check of terminal and Elec. Connection</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">6.</div>
																			</td>
																			<td width="416">Condition check for servo motor</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">7.</div>
																			</td>
																			<td width="416">Condition check for pressure regulator</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">8.</div>
																			</td>
																			<td width="416">Condition check for gas butterfly valve</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">9.</div>
																			</td>
																			<td width="416">Function test for valve proving</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">10.</div>
																			</td>
																			<td width="416">Soundness test phase 1,3
																			</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">11.</div>
																			</td>
																			<td width="416">Soundness test phase 2 (double solenoid valve)
																			</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82">&nbsp;</td>
																			<td width="416">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF" bgcolor="#0080BD">
																			<td width="82" bgcolor="#99CCFF"><div align="center">No.</div>
																		  </td>
																			<td width="416" bgcolor="#99CCFF"><div align="center">Measuring and adjusting ( if necessary ) list
																				</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">1.</div>
																			</td>
																			<td width="416">Measuring flue gas temperature</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">2.</div>
																			</td>
																			<td width="416">Measuring of flue gas with carbon monoxide</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">3.</div>
																			</td>
																			<td width="416">Report conclusion of combustion efficiency</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">4.</div>
																			</td>
																			<td width="416">Excess air measuring</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">5.</div>
																			</td>
																			<td width="416">Measuring flue gas CO<sub>2</sub> for natural gas</td>
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
																<td class="T_blue14"><img src="../images/b9.GIF" width="11" height="11">&nbsp;&nbsp;<strong>OIL 
																BURNER MAINTENANCE</strong></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="501" border="1" cellspacing="0" cellpadding="0" align="center" class="T_gray13">
																		<tr bordercolor="#FFFFFF">
																			<td colspan="2" class="T_black11" bgcolor="#B7DBFF" height="25"><div align="center"><strong>Work 
																						list per month </strong>
																				</div>
																		  </td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF">
																			<td width="82" bgcolor="#D5EAFF"><div align="center">No.</div>
																		  </td>
																			<td width="419" bgcolor="#D5EAFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">1.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean oil filter</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">2.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean nozzle head</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">3.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean Ignition electrode</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">4.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean inside control panel</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">5.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean blower fan slot</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">6.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean regulating sleeve of control segment</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">7.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean flame sightless</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">8.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean burner body																			</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF">&nbsp;</td>
																			<td width="419" bordercolor="#99CCFF">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF">
																			<td width="82" bgcolor="#D5EAFF"><div align="center">No.</div>
																		  </td>
																			<td width="419" bgcolor="#D5EAFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">1.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Function test for preheater thermostat</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">2.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">
																				Function test for flame detector</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">3.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Function test for heating catridge and NTC. 
																				Sensor</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">4.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Condition check for oil leakage of Oil 
																				regulating</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">5.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Function test for burner control</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">6.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Condition check of terminal and Elec. 
																				Connection</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">7.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Condition check for servo motor</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF">&nbsp;</td>
																			<td width="419" bordercolor="#99CCFF">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF">
																			<td width="82" bgcolor="#D5EAFF"><div align="center">No.</div>
																		  </td>
																			<td width="419" bgcolor="#D5EAFF"><div align="center">Measuring and adjusting ( if 
																					necessary ) list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">1.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Measuring flue gas CO<sub>2</sub> for heavy 
																				oil</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">2.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Measuring flue gas temperature</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">3.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Measuring of flue gas with carbon monoxide</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">4.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Report conclusion of combustion efficiency</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">5.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Excess air measuring</td>
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
																<td class="T_green13"><strong><u>�ҹ���ا�ѡ�Ҽ�������������ͧ�Ӥ�����͹ (Heating 
																			Appliance)</u></strong></td>
															</tr>
															<tr>
																<td height="15"></td>
															</tr>
															<tr>
																<td class="T_gray13"><strong>����ͧ�Ӥ�����͹㹺�ҹ��������� 3 ��Դ�˭� � �ѧ���</strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>1. Steam Boiler ���� 2 ��Դ ��� 
																		Ẻ�������Ẻ��͹��</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td></td>
																			<td width="516" class="T_green13"><strong>&#8226;&nbsp;<u>Ẻ����</u></strong></td>
																		</tr>
																		<tr>
																			<td></td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="15"></td>
																			<td class="T_gray13"><strong><u>��ú��ا�ѡ�� ������蹵�Ǩ��������� 2 ��ǹ ���</u></strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td></td>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/airrow.jpg" width="6" height="8">&nbsp;&nbsp;����������&nbsp;&nbsp;������蹷Ӥ������Ҵ���俴����ç�§��� 
																				�����蹴� ���ҵ�Ǩ������Ǣͧ���繷��㹡óշ����� ��÷ӷء 3 ��͹ 
																				�������ҧ���»��� 2 ����
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="15"></td>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/airrow.jpg" width="6" height="8">&nbsp;&nbsp;��������ʹ��&nbsp;&nbsp;������蹻���µС͹�����͡�������Ŵ��������鹢ͧ��������㹹�� 
																				��е�Ǩ�ͺ�س�Ҿ�ͧ��ӻ�͹�����͹���������㹤س�Ҿ������ҵðҹ</td>
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
																<td class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>���ҧ��� 3</u></strong>&nbsp;&nbsp;�ʴ��س�Ҿ����ҵðҹ������͹��</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="500" border="0" cellspacing="1" cellpadding="0" align="center" class="T_black11">
																		<tr>
																			<td rowspan="2" width="223" bgcolor="#99CCFF"><div align="center">��ҹ��<br>
																					(Parameter)<br>
																				</div>
																		  </td>
																			<td height="21" colspan="3" bgcolor="#99CCFF"><div align="center">�ç�ѹ��ҹ���͹��</div>
																		  </td>
																		</tr>
																		<tr>
																			<td width="121" height="20" bgcolor="#CCE6FF"><div align="center">�ҡ���� 1 bar
																				</div>
																		  </td>
																			<td width="126" height="20" bgcolor="#CCE6FF"><div align="center">1.5 - 22 bar</div>
																		  </td>
																			<td width="121" height="20" bgcolor="#CCE6FF"><div align="center">2.4 - 44 bar</div>
																		  </td>
																		</tr>
																		<tr bgcolor="#B692DA">
																			<td width="223" bgcolor="#D5F7FF">&nbsp;&nbsp;Conductivity at 25
																				<br>
																				&nbsp;&nbsp;degree���ë������ / ��.��.
																				<br>
																		  </td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;=5000</div>
																		  </td>
																			<td width="126" bgcolor="#D5F7FF"><div align="center">&lt;=5000</div>
																		  </td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;=5000</div>
																		  </td>
																		</tr>
																		<tr bgcolor="#D8C7EB">
																			<td width="223" bgcolor="#F2FDFF">&nbsp;&nbsp;pH at 25 degree</td>
																			<td width="121" bgcolor="#F2FDFF"><div align="center">11.0 - 12.0
																				</div>
																		  </td>
																			<td width="126" bgcolor="#F2FDFF"><div align="center">11.0 - 12.0</div>
																		  </td>
																			<td width="121" bgcolor="#F2FDFF"><div align="center">10.7-11.7</div>
																		  </td>
																		</tr>
																		<tr bgcolor="#B692DA">
																			<td width="223" bgcolor="#D5F7FF">&nbsp;&nbsp;Density</td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;0.25</div>
																		  </td>
																			<td width="126" bgcolor="#D5F7FF"><div align="center">&lt;0.30</div>
																		  </td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;0.25</div>
																		  </td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������蹵�Ǩ��������ʹ�� 
																	�¡���礵С�ѹ �´ٷ�����˹�, ��Դ�ͧ�С�ѹ 
																	���ǹӼš����������������ҧ�С�ѹ�͡ 
																	��������ö���෤�����͹������ҧ�ջ���Է���Ҿ���蹴��س����Ի��ͧ 
																	����٧���������ʴ������ҧ˹����� ��ö���෤�����͹����</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. Hot Oil Boiler</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">���㹨����ѡɳФ�´좴��ǹ��ǧ 
																	����ժ�ͧ��ҧ������觼�ҹ����ǹ�ҡ���� 2 � 3 ��Ѻ</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>��ú��ا�ѡ�Ҽ���������</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="25" align="right" class="T_gray13"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td width="10" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">������蹷Ӥ������Ҵ�����ç �����ǡѺ�����͹�ӷء � 3 ��͹</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">��Ǩ�ͺ������Ǣͧ����˹�������ѧ ���ͻ�ͧ�ѹ������͹�٭����</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">���蹵�Ǩ�س����Ի��ͧ �����ǡѺ�����͹��</td>
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
																<td height="20" class="T_blue13"><strong>3.Hot Gas (Direct Fire) Type</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">����ͧ�Ӥ�����͹��Դ��� ������ʾ蹵ç�����Ե�� �� Spray 
																	dryer, ���, ����ͧͺ</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_green13"><strong>��ú��ا�ѡ��</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="25" align="right" class="T_gray13"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td width="10" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">���蹵�Ǩ�բͧ��ѹ�����ͧ ����դ�ѹ������ʹ� 
																				�Ҩ�繼��Ҩҡ���������ͧ��Ǿ���������ó�
																			</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">���蹵�Ǩ���س����Ի��ͧ��� 
																				���ͻ�ͧ�ѹ�س������٧�ҡ��ö���෤�����͹����� �����ǡѹ</td>
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
													<td height="10" class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 2: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;Boiler</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td height="20" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong>��ʹբͧ������ҫ�����ҵ�� 
																		Boiler</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25" valign="baseline"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">��������� NG �������������ҡ ����� Unburned Carbon �� CO. 
																				SOx, NOx ����ҳ����ҡ ��üء��͹ High-Low Temperature Corrosion 
																				��������ͧ�ҡ����� SO<sub>3</sub> ��� V<sub>2</sub> O<sub>5 </sub>�֧Ŵ����� 
																				Chemical ���仪���Ŵ�������·�駤�� Operating Cost ��� Maintenance Cost</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="baseline"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">������ ����ҳ����������� ���ͧ�ҡ����� Si-Ca, AL, P, ��� 
																				Na. ����͹�Ѻ����ѹ�� ���������ͧ�Դ�ػ�ó���ҧ Heating Surface (Soot Blower) 
																				����ػ�ó��红�����</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">���͹�Ӣ�ҴŴŧ ���ͧ�ҡ ��� 1 ��� ��� 3</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="baseline"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">����� Pump ���ͧ�ҡ NG �� Pressure 㹵�� ��§���� Regulator 
																				Ŵ�������� (0.2-0.6) �ѹ���֧���Burner ���������������Ѻ��ü�� Air 㹡����</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">BURNER �����������Ѻ��ü�� Air 㹡����</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">Ŵ��ѧ�ҹ������蹹���ѹ �Թ Pump (���俿��)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">Ŵ Flue Gas Outlet temp ŧ�ҡ 145-105&deg;C �����Ŵ Heat Loss 
																				(��������Է���Ҿ)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">����ͧ�նѧ�纡Ѻ����ѹ</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong>�������¹�ŧ�ҡ�ҷ�������ѹ����������ԧ�����ҫ�����ҵ�᷹ 
																		�е�ͧ���ػ�ó�ѧ���</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">��� Burner ������к� Control 
																				��駪ش�����������͹��ҵ�ͧ�ӡ�� OVER HAUL �����ҡ�͹�� NG</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">Pipe line ����� Metering Gas ��Ҫش Burner</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">��Ѻ��ا�Ҥ�ú���ǳ���͹��������ҡ�ȶ����</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">��ͧ�ӡ�� over haul ������ͺ��͹�� NG</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong>�������¹�ŧ�ҡ�ҷ�������ѹ����������ԧ�����ҫ�����ҵ�᷹ 
																		�е�ͧ���ػ�ó�ѧ���</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�� FO Tank, FO Pump</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�� FO Heater ��俿������͹�� ����俿�����ҧ����</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�� Aditive ���� Combustion ��� Anti-Corosion
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�ա����ش���ͷӤ������Ҵ Fire Tube ���� (�ء 7 �ѹ)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">���鹷�����ǳ Boiler �ҡ����</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�դ���ʡ�á����Դ���� ������ ��й���ѹ����
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�ռš�з��������Ǵ��������ǳ�����§ �ҡ��ѹ�͡���ͧ��ٻ�ͧ 
																				Fly Ash ��� SO2 - SO3</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="25" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>����� NG ��������ԧ��ͤ����ѧ����Ǣ�ҧ�鹷�� 7 ��� 
																					�������</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"></td>
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
													<td><span class="T_blue13">
															<% case 3: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;�������¹����������ԧ��ҫ�����ҵ�</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td></td>
																<td width="549" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong><u>Simple 
																			Conversion</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">��ѡ��÷����</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">��� Conversion �ҡ ����ѹ�� Natural Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">��� Conversion �ҡ LPG �� Natural Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong><u>��ѡ��÷����</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">���ͧ�ҡ������ԧ���Ъ�Դ����Ҥ�����͹����ҧ�ѹ �ѧ���</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">����ҳ������͹��͹ �����ѧ��� Conversion ���� Natural Gas 
																				�е�ͧ������ ���������</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">����������ԧ��Դ�</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">��ͧ�ӹ֧�֧ Fluid handling capability �ͧ Burner ��� ����к� 
																				control ��ҧ� value ����֧
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">��Ҵ�ͧ��͡�ҫ��� �����§���������</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">Stability �ͧ Burner</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong><u>Equal 
																			Heat Input Rate</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr class="T_green13">
																			<td width="35" align="center"><strong>1.</strong></td>
																			<td><strong>�ó� Burner ��� �� Heavy/Light Oil Burner</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;����¹ 
																				Oil burner �� Gas Burner �� Sizing ����� heat capacity ������ 
																				��еԴ��駪ش Gas train ���ͤǺ���<br>
																				�ç�ѹ��ҫ������������ Burner
																			</td>
																		</tr>
																		<tr>
																			<td height="20"></td>
																			<td height="20"></td>
																		</tr>
																		<tr class="T_green13">
																			<td align="center"><strong>2.</strong></td>
																			<td><strong>�ó� Burner ����� LPG Burner</strong></td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;��Ѻ 
																				LPG Burner �������� Heat capacity ������
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- &nbsp;&nbsp;�����ç�ѹ��ҫ ��������� heat 
																				rate ������
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- &nbsp;&nbsp;����¹ nozzle �ͧ LPG Burner 
																				����˭���</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>��÷� 
																			Conversion ����Ѻ Boiler</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>��� Conversion Steam Boiler 
																		���ӴѺ��鹵͹�ѧ���</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�ʹ��� Oil Burner ����͡</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�Դ��� Gas Burner �����������᷹���</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">�Դ��駪ش Gas Train</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">����¹�ŧ program burner control</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">Rewiring</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Atmosferic 
																			burners</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/Atmosferic burners.gif" width="454" height="188"></td>
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
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="25" align="right" valign="baseline" class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></td>
																			<td width="10" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">��ҫ����ͼ�ҹ nozzle ���դ��������٧��� ����ǳ�ͤʹ�ͧ 
																				Venturi �ҡ���ͺ��ҧ�ж١�ٴ���� ������㹡��������</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b3.gif" width="11" height="11"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">����ѵ�ҡ�� flow �ͧ��ҫ�ҡ��� combustion air 
																				��ж١�ٴ�����ҡ�����</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			atmosferic burners</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td><img src="../images/information/suit1.gif" width="185" height="38"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="24" align="right" valign="baseline" class="T_gray13">&nbsp;</td>
																			<td width="22" class="T_green13"><strong>E</strong><br>
																				<strong>D</strong><br>
																				<strong>p</strong><br>
																				<strong>W</strong></td>
																			<td width="503" class="T_gray13">= energy flow through a nozzle
																				<br>
																				= diameter nozzle
																				<br>
																				= pressure
																				<br>
																				= Wobbe Index</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			from LPG to NG</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td><img src="../images/information/suit2.gif" width="240" height="46"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="26"></td>
																			<td width="523" class="T_gray13">��ҵ�ͧ������ �����ѹ
																				<span class="T_blue13">
																					<strong>(P)</strong></span>
																				�����
																				<br>
																				<strong>�ѧ���</strong> �е�ͧ����¹
																				<span class="T_blue13">Nozzle diameter</span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td align="center"><img src="../images/information/suit3.gif" width="127" height="46"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="26"></td>
																			<td width="523" class="T_gray13">��ҵ�ͧ�����颹Ҵ
																				<span class="T_blue13">nozzle <strong>(D)</strong></span>
																				������
																				<br>
																				<strong>�ѧ���</strong> �е�ͧ��ͧ�����ç�ѹ��ҫ
																				<span class="T_blue13">
																					<strong>(p)</strong></span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td align="center"><img src="../images/information/suit4.gif" width="127" height="46"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Fluid 
																			handling capability</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<th scope="row">&nbsp;
																	</th>
																<td class="T_green13"><strong>�ó� Conversion �ҡ LPG �� NG 
																		�ҡ���繤�þԨ�ó��������ҹ��</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;����¹��Ҵ�ͧ��� 
																				��� �����</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;����¹�к� 
																				Control
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;����¹ 
																				Burner ���� Nozzle</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Gas 
																			train</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Gas train composition :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Ball 
																				value																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Gas 
																				filter</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Gas 
																				pressure regulator</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Safety 
																				blow off value
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Pressure 
																				switch</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Solenoid 
																				value</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Value 
																				proving system</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Burner 
																			stability</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���俷���͡�ҡ
																	<span class="T_green13">burner</span>
																	�� <strong class="T_blue13">stable</strong> �����
																	<span class="T_green13">flame front</span>
																	����� ��ش����������͹��� ���ͧ�ҡ��������͹������ѧ
																	<span class="T_green13">burner</span>
																	���¤���������ҡѺ�������Ǣͧ
																	<span class="T_blue13">fuel-air mixture</span>
																	��������͡�ҡ burner</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;��� 
																				fuel-air mixture ��������͡�ҡ burner �դ��������٧�Թ �ѧ��� flame �� blow 
																				off ��дѺ
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;��� 
																				fuel-air mixture ��������͡�ҡ burner �դ������ǵ���Թ �ѧ��� ��Ǩ� 
																				flashback ��Ѻ�ҷ�� burner</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			of ovens</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Conversion of ovens :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;����Ѻ 
																				Oven ���Դ��� forced draught oil-burner, ��� Conversion ����ö��������¹ 
																				oil burner ������� forced draught gas burner
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;����Ѻ 
																				Oven ����� LPG-burner ���, ��� Conversion �� NG ����ö���§���������¹ 
																				injector ���� Burner pressure �ҡ gas equipment 
																				�������֧��͡�ҫ�բ�Ҵ�˭���§��</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Direct 
																			and indirect drying systems</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Direct system : </strong>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;��ʹբͧ 
																				NG �����������ԧ������Ҵ ���������ö direct fire ��
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;�����Ŵ����ҳ 
																				fuel consumption ŧ�����ҳ 30 �֧ 40 % ��º�Ѻ indirect system</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>���ͧ�ҡ :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;efficiency 
																				increase</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;no start-up and shut-down losses</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;lower 
																				investments in many cases</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;elimination 
																				of distribution losses</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;less 
																				maintenance costs</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			of an indirect drying system</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/indirect drying .gif" width="502" height="323"></td>
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
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Radiant 
																			heating for drying</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Specific drying processes :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;paper, 
																				card board industries</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;textile 
																				and carpet industries
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;special 
																				paint drying systems</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Other processes :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;polymerization</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;melting
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;food 
																				processing</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td width="5"></td>
																<td class="T_gray13"></td>
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
													<td><span class="T_blue13">
															<% case 4: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;�����ŷ���ͧ��Һ��͹����¹�����ҫ�����ҵ�</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td></td>
																<td width="549" class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.</strong></td>
																			<td class="T_green13"><strong>Utility &nbsp;���� Boiler , Hotoil , Gas 
																					Turbine</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13"><strong>�����ŷ���ͧ��èҡ������Ǩ</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1.1. ���ѧ ? ��� Burner ��� KW , Btu/hr. , Kcal / hr. ?</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1.2. �����������ԧ ? �ó� LPG �ç�ѹ�����</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1.3. ����� Gastrain ��ͧ��颹Ҵ = ? ������ ? �� 1.1-1.3 ��ͧ�� 
																				Nameplate ���͵Դ��� Supplier</td>
																		</tr>
																		<tr>
																			<td height="20"></td>
																			<td height="20"></td>
																		</tr>
																		<tr>
																			<td class="T_green13" align="center" valign="baseline"><strong>2.</strong></td>
																			<td class="T_green13"><strong>����ͧ�ѡ�㹢�ǹ��ü�Ե ���� ����ͧͺ��� , Spray 
																					Dryer , Hot Air �����Ѻ�ء��ǹ��ü�Ե ���</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">2.1. ����� Burner ������ٻ��������ǡѹ�Ѻ��� 1.1-1.3</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">2.2. ����� Ẻ�¡��ǹ��ͧ�����Ѵ��ǹ����������</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13">- ������� CFM = ?
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13">
																				- ������ԧ����� = ?</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td width="5"></td>
																<td class="T_gray13"></td>
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
													<td><span class="T_blue13">
															<% case 5: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;������ҧ��äӹǳ</td>
															</tr>
															<tr>
																<th scope="row">&nbsp;
																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="20"></td>
																			<td width="540" class="T_green13"><strong>Boiler 3 T/hr. ��ͧ����Ҿ�ѧ�ҹ��� KW , 
																					����һ���ҳ������ҫ</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13"><strong><u>�Ըշ�</u></strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1 Ton ( 1,000 kg ) Stream/hr. = 750 KW���Щй�� 3 T/hr. = 
																				750x 3 = 2,250 KW
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">����Է���Ҿ�ͧ Boiler 
																				����Ҩҡ����Ѵ����Է���Ҿ�������������ͧ = 85 %</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">���Щй�� Sizing Load = 2,650 KW</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">����ҳ NG ����� = 2,650KW/8.83 KWHr/m3 = 300 m3/hr.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">�ҡ������ Supplier �Ѵ��� Burner ����� NG 300 m3/hr. 
																				��з��������СѺ Boiler</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</th>
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
													<td>&nbsp;<%end select %></td>
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
</html>
