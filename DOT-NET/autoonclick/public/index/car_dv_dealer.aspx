<%@ Page CodeBehind="car_dv_dealer.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.car_dv_dealer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html;charset=window-874">
		<LINK href="../scripts+pics/style/style.css" type="text/css" rel="stylesheet">
			<script src="../scripts+pics/style/jquery.js" type="text/javascript"></script>
			<script src="../scripts+pics/style/cmxform.js" type="text/javascript"></script>
			<script src="../scripts+pics/style/footer.js" type="text/javascript"></script>
	</HEAD>
	<body>
		<form id="form1" name="form1" runat="server">
			<div id="all">
				<div id="content">
					<div id="head">
						<!--Head--><IMG id="logo_head" height="99" alt="" src="../scripts+pics/images/head_logo.jpg" width="202"><IMG id="banner_head" height="60" alt="" src="../scripts+pics/images/full-banner-468-60.gif"
							width="468"></div>
					<div id="search">
						<!--HoriNavi-->
						<div id="hn">
							<ul>
								<li class="sl">
									<IMG height="21" alt="" src="../scripts+pics/images/hn_left.gif" width="155">
								</li>
								<li>
									<A class="offer" href="#">ŧ��С��</A>
								</li>
								<li class="s">
									<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
								</li>
								<li>
									<A class="search" href="#">����</A>
								</li>
								<li class="s">
									<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
								</li>
								<li>
									<A class="so" href="#">�ɳҾ����</A>
								</li>
								<li class="s">
									<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
								</li>
								<li>
									<A class="dealer" href="#">����Сͺ���</A>
								</li>
								<li class="s">
									<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
								</li>
								<li>
									<A class="magazine" href="#">����Ыչ</A>
								</li>
								<li class="s">
									<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
								</li>
								<li>
									<A class="about" href="#">����ǡѺ���</A>
								</li>
								<li>
									<A class="login" href="#">Login</A>
								</li>
							</ul>
						</div>
					</div>
					<div id="search_car">
						<!--VerticalNavi-->
						<div id="vn">
							<ul>
								<li class="s">
									<IMG height="22" alt="" src="../scripts+pics/images/vn_top_155x22.GIF" width="155">
								</li>
								<li>
									<A class="search_car" href="#">����ö¹��</A>
								</li>
								<li>
									<A class="search_moto" href="#">����ö�ѡ��ҹ¹��</A>
								</li>
								<li>
									<A class="search_truck" href="#">����ö��÷ء</A>
								</li>
								<li>
									<A class="search_part big" href="#">���Ҫ����ǹ/ ������/ ��дѺ¹��</A>
								</li>
								<li class="s">
									<IMG height="22" alt="" src="../scripts+pics/images/vn_dividing_140x22.gif" width="140">
								</li>
								<li>
									<A class="search_business" href="#">���Ҽ���Сͺ���</A>
								</li>
								<li>
									<A class="search_job" href="#">���ҧҹ</A>
								</li>
								<li class="s">
									<IMG height="22" alt="" src="../scripts+pics/images/vn_dividing_140x22.gif" width="140">
								</li>
								<li>
									<A class="search_request" href="#">�ҡ���ҡѺ���</A>
								</li>
								<li>
									<A class="parking" href="#">��¡�úѹ�֡��С��</A>
								</li>
								<li class="s">
									<IMG height="22" alt="" src="../scripts+pics/images/vn_dividing_140x22.gif" width="140">
								</li>
								<li>
									<A class="startpage" href="#">˹���á</A>
								</li>
								<li>
									<A class="info_1" href="#">�Դ������</A>
								</li>
								<li>
									<A class="info_2" href="#">�ɳ��͹�Ź�</A>
								</li>
								<li>
									<A class="info_3" href="#">Ἱ�ѧ���䫵�</A>
								</li>
								<li>
									<A class="info_4" href="#">���������</A>
								</li>
								<li class="sb">
									<IMG height="40" alt="" src="../scripts+pics/images/vn_bottom_140x40.gif" width="140">
								</li>
							</ul>
						</div>
					</div>
					<div id="v_banner_box">
						<!--Banner right side Skyscraper 120x600--><IMG height="600" alt="" src="../scripts+pics/images/skyscraper_120x600.gif" width="120"></div>
					<div id="inner_box">
						<!--PageContent-->
						<div id="sn_t">
							<ul>
								<li class="l">
								</li>
								<li>
									<A class="nv1" href="#">��Ѻ�˹���ʴ���</A>
								</li>
								<li class="c">
								</li>
								<li>
									<A class="nv2" href="#">���ҫ��</A>
								</li>
								<li class="c">
								</li>
								<li>
									<A class="nv3" href="#">�ҡ���ҡѺ���</A>
								</li>
								<li class="c">
								</li>
								<li>
									<A class="nv4" href="#">��¡�úѹ�֡��С��</A>
								</li>
								<li class="r">
								</li>
							</ul>
						</div>
						<div class="dv_t"><A href="#">&lt;&lt;</A>
							<p>��С�� 1 �ҡ 20</p>
							<A href="#">&gt;&gt;</A></div>
						<div id="dv">
							<div>
								<h1><asp:label id="carBrand" runat="server"></asp:label></h1>
								<h2><asp:label id="head_year" runat="server"></asp:label></h2>
								<h3>�
									<asp:label id="head_price" runat="server"></asp:label></h3>
								<p><IMG alt="" src="../scripts+pics/images/park.gif"><asp:HyperLink ID="savePak" runat="server"></asp:HyperLink>
									<IMG alt="" src="../scripts+pics/images/mailto.gif"><asp:HyperLink ID="sendFr" runat="server"></asp:HyperLink>
									<IMG alt="" src="../scripts+pics/images/print.gif"><asp:HyperLink ID="printThis" runat="server"></asp:HyperLink>
									<IMG alt="" src="../scripts+pics/images/complaint.gif"><asp:HyperLink ID="warnDel" runat="server"></asp:HyperLink></p>
								<ul class="dealer">
									<li class="l">
										<table cellSpacing="0">
											<caption>
												��������´</caption>
											<tr>
												<th>
													<span>������ö</span></th>
												<td><asp:label id="category" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�Ҥ�</span></th>
												<td><asp:label id="Price" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>��Ҿö</span></th>
												<td><asp:label id="status" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>��</span></th>
												<td><asp:label id="yearcar" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�Ţ����</span></th>
												<td><asp:label id="miles" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>����������ͧ¹��</span></th>
												<td><asp:label id="enginetype" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>���ѧ����ͧ¹��</span></th>
												<td><asp:label id="power" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>��</span></th>
												<td><asp:label id="colors" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�к������</span></th>
												<td><asp:label id="gear" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�ӹǹ�����</span></th>
												<td><asp:label id="numgear" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�ӹǹ�ٺ</span></th>
												<td><asp:label id="numpump" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>��Ҵ����ͧ¹��</span></th>
												<td><asp:label id="cc" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�ӹǹ��е�</span></th>
												<td><asp:label id="numdoor" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�ӹǹ�����</span></th>
												<td><asp:label id="numseat" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�ѵ��������ͧ����ѹ</span></th>
												<td><asp:label id="fuelconsume" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�����ضѧ����ѹ</span></th>
												<td><asp:label id="fueltank" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>��Ǩ��Ҿö��������ش</span></th>
												<td><asp:label id="lastcheck" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ö���غѵ��˵�(�ѧ������)</span></th>
												<td><asp:label id="accident" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ö�ջ�Сѹ</span></th>
												<td><asp:label id="insurrunce" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th class="last">
													<span>�Ţ���ö</span></th>
												<td class="last"><asp:label id="carid" runat="server"></asp:label></td>
											</tr>
										</table>
										<ul>
											<h4>�ػ�ó������</h4>
											<li>
												<asp:label id="accessory" runat="server"></asp:label></li></ul>
										<ul>
											<h4>�������������</h4>
											<li>
												<asp:label id="description" runat="server"></asp:label></li></ul>
										<table class="dealers_ads" cellSpacing="0">
											<caption>
												��¡�û�С����������ͧ����Сͺ��ù��</caption>
											<tr>
												<th>
													<span>
														<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
													<p><A href="#">Toyota Camry,
															<span>����</span>, � 1,200,000</A></p>
												</th>
												<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
													<p><A href="#">BMW 3, �� 1994, � 200,000</A></p>
												</td>
											</tr>
											<tr>
												<th>
													<span>
														<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
													<p><A href="#">Make Model,
															<span>new</span>-year, price</A></p>
												</th>
												<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
													<p><A href="#">Make Model,
															<span>new</span>-year, price</A></p>
												</td>
											</tr>
										</table>
									</li>
									<li class="r">
										<div><IMG alt="" src="../scripts+pics/images/pic_318x239.gif"></div>
										<ul>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
										</ul>
										<ul>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
											<li>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45_2.gif"></A>
											</li>
										</ul>
										<table cellSpacing="0">
											<caption>
												�����ŵԴ���</caption>
											<tr>
												<th>
													<span>���ͺ���ѷ/�Ԩ���</span></th>
												<td><asp:label id="custName" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�������</span></th>
												<td><asp:label id="Addr" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>���Ѿ��</span></th>
												<td><asp:label id="Tel" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�����</span></th>
												<td><asp:label id="fax" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>�ѹ-���ҷӡ��</span></th>
												<td><asp:label id="operateTime" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th class="last">
													<span>�������������</span></th>
												<td class="last"><span><IMG alt="" src="../scripts+pics/images/arrow_dv.gif"><asp:HyperLink id="de_map" runat="server">Ἱ������ѷ</asp:HyperLink>
													</span>
													<span>
														<IMG alt="" src="../scripts+pics/images/arrow_dv.gif"><asp:HyperLink id="de_home" runat="server">�����ź���ѷ��л�С�ȷ��</asp:HyperLink>
															<br>
															����ͧ��Ҫԡ</A></span></td>
											</tr>
										</table>
										<table class="email" cellSpacing="0">
											<caption>
												�Դ����ͺ���</caption>
											<tr>
												<th>
													<span>����</span></th>
												<td><asp:textbox id="name" tabIndex="1" runat="server" Width="95%" MaxLength="50"></asp:textbox></td>
											</tr>
											<tr>
												<th>
													<span>E-mail</span></th>
												<td><asp:textbox id="email" tabIndex="3" onblur='doValidateEmail(this.value,this.name);' runat="server"
														Width="95%" MaxLength="50"></asp:textbox></td>
											</tr>
											<tr>
												<th>
													<span>���Ѿ��</span></th>
												<td><asp:textbox id="phone1" tabIndex="4" runat="server" Width="95%" MaxLength="50"></asp:textbox></td>
											</tr>
											<tr>
												<th class="last">
													<span>�Ӷ��/����ʹ���</span>&nbsp;</th>
												<td><asp:textbox id="question" tabIndex="7" runat="server" Width="95%" MaxLength="1000" TextMode="MultiLine"
														Rows="5"></asp:textbox></TEXTAREA><A class="b60" href="javascript:check_form();">�� 
														E-mail</A></td>
											</tr>
										</table>
									</li>
								</ul>
							</div>
						</div>
						<IMG class="dv_line" alt="" src="../scripts+pics/images/l_o_693.gif">
						<div id="sn_b">
							<ul>
								<li class="l">
								</li>
								<li>
									<A class="nv1" href="#">��Ѻ�˹���ʴ���</A>
								</li>
								<li class="c">
								</li>
								<li>
									<A class="nv2" href="#">���ҫ��</A>
								</li>
								<li class="c">
								</li>
								<li>
									<A class="nv3" href="#">�ҡ���ҡѺ���</A>
								</li>
								<li class="c">
								</li>
								<li>
									<A class="nv4" href="#">��¡�úѹ�֡��С��</A>
								</li>
								<li class="r">
								</li>
							</ul>
						</div>
						<div class="dv_b"><A href="#">&lt;&lt;</A>
							<p>��С�� 1 �ҡ 20</p>
							<A href="#">&gt;&gt;</A></div>
					</div>
				</div>
				<div id="footer">
					<ul>
						<li class="s">
							<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
						</li>
						<li>
							<A href="#">Terms &amp; Condition</A>
						</li>
						<li class="s">
							<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
						</li>
						<li>
							<A href="#">Imprint</A>
						</li>
						<li class="s">
							<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
						</li>
						<li>
							<A href="#">Online-Marketing</A>
						</li>
						<li class="s">
							<IMG height="21" alt="" src="../scripts+pics/images/hn_s.gif" width="1">
						</li>
					</ul>
				</div>
			</div>
			<script src="../../j_script/cookie.js" type="text/javascript"></script>
			<script src="../../j_script/checkEmail.js"></script>
			<script language="javascript">
			// ----------  START  CHECK EMAIL FORM ---------
		function check_form(){ 
		
		var name = document.getElementById("name");
		var eml = document.getElementById("email");
		var phone1 = document.getElementById("phone1");
		var question = document.getElementById("question");
		
		
				if(!check_email(eml.value)){
					alert("Email ���١��ͧ");
					document.form1.email.focus(); 
					if(document.all || document.getElementByID){
						eml.style.background = "#ffff99";
					}
					//return (false);
				}else{
					sendMail(name.value,eml.value,phone1.value,question.value);
				}
			}
		function sendMail(name,email,phone1,question){
			autoonclick.car_dv_dealer.sendQuestion(name,email,phone1,question,mailBack);
		}
		function mailBack(res){
			var x 
			alert(res.value);
			
		}
		
		//  Cookies Things !! -----   START  COOKIES PART ----------
			function saveAdv(carid){
				if(noDup(carid)){
					if(getCarNum()<20){
						addCar(carid);
						incSaveNum();
						alert('�ѹ�֡��С�����º����');
					}else{
						alert('�������ö�ѹ�֡���Թ 20 ��С��');
					}
					
				}
			}
			//   ---------------    NODUP ------------------
			function noDup(carid) {
				var oStringObject = new String(getCookie('saveCar'));
				if(oStringObject.indexOf('car:'+carid+':')!=-1){
					alert('�س��ӡ�úѹ�֡��С���������');
					return false;
				}else{
					return true;
				}
						
			}
			//   ---------------    GETCAR NUM ------------------
			function getCarNum(){
				var x = getCookie('saveCarNum');
				var ans;
					if(x==''){
						ans = 0;
					}else{
						ans = x;
					}
				return ans;
			}
			//   ---------------    ADD  CAR ------------------
			function addCar(carid) {
					var x = getCookie('saveCar');
					setCookie('saveCar', x+'car:'+carid+':,', getExpDate(60, 0, 0),'/');
				}
				
			//   ---------------    INC SAVE NUM ------------------	
		    function incSaveNum() {
				var x = getCookie('saveCarNum');
				if(x==''){
					setCookie('saveCarNum', 1, getExpDate(60, 0, 0),'/');
				}else{
					if(x==20){
						alert('�������ö�ѹ�֡��С���Թ 20 ��С������');
					}else{
						setCookie('saveCarNum', ++x, getExpDate(60, 0, 0),'/');
					}
				}
			}
			</script>
		</form>
	</body>
</HTML>
