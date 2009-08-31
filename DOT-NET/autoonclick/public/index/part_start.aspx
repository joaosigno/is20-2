<%@Register TagPrefix="starttop" TagName="starttop" Src="../menu/start_top.ascx"%>
<%@Register TagPrefix="startleft" TagName="startleft" Src="../menu/start_left.ascx"%>
<%@Register TagPrefix="startfooter" TagName="startfooter" Src="../menu/start_footer.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@ Page CodeBehind="part_start.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.part_start" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html;charset=window-874">
		<link href="../scripts+pics/style/style.css" type="text/css" rel="stylesheet">
			<script type="text/javascript" src="../scripts+pics/style/jquery.js"></script>
			<script type="text/javascript" src="../scripts+pics/style/cmxform.js"></script>
			<script type="text/javascript" src="../scripts+pics/style/footer.js"></script>
	</HEAD>
	<body>
		<div id="all">
			<div id="content">
				<div id="head">
					<!--Head--><img id="logo_head" src="../scripts+pics/images/head_logo.jpg" alt="" height="99" width="202"><img id="banner_head" src="../scripts+pics/images/full-banner-468-60.gif" alt="" height="60"
						width="468"></div>
				<starttop:starttop id="starttop" runat="server"></starttop:starttop>
				<startleft:startleft id="startleft" runat="server"></startleft:startleft>
				<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
				<div id="inner_box">
					<!--PageContent-->
					<h1 class="intro"><!--Inroduction Headline--> - 
						��駺ؤ�ŷ������м���Сͺ�������öŧ��С�Ȣ��ö���������/��дѺ¹���� ����� 
						-</h1>
					<div id="randomShow">
						<table class="index_ads" cellspacing="0">
							<!--Example Ads-->
							<caption>
								"������/��дѺ¹��" ŧ��С�������������� �� AUTO-ONCLICK</caption>
							<tfoot>
								<tr>
									<th>
										<span>
											<a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</th>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
								</tr>
								<tr>
									<th>
										<span>
											<a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</th>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
									<td><span><a href="#"><img src="../scripts+pics/images/pic_80x60.gif" alt=""></a></span>
										<p><a href="#">Product Name,
												<span>new</span>-used, price</a></p>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
					<div id="qs">
						<!--Part Quick Search-->
						<h1>����������/��дѺ¹�� �� AUTO-ONCLICK</h1>
						<div>
							<form class="cmxform" id="form1" name="form1" action="#" runat="server">
								<fieldset>
									<ol>
										<li>
											<label for="#">
												<span>
													<strong>��Ǵ����</strong></span>
											</label>
											<select class="full" id="cat" onchange="showBrands(this.value);" name="cat">
												<option value="0">�ô���͡</option>
												<option value="1">ö¹��</option>
												<option value="2">ö�ѡ��ҹ¹��</option>
												<option value="3" selected>ö��÷ء</option>
											</select>
											<asp:label id="err" runat="server" Font-Bold="True" ForeColor="Red"></asp:label></li>
										<li>
											<label for="#">
												<span>
													<strong>�������Թ���</strong></span>
											</label>
											<select class="full">
												<option selected>�ء������</option>
												<option>...</option>
											</select></li>
										<li>
											<label for="#">
												<span>
													<strong>��Ҿ�Թ���</strong></span>
											</label>
											<select class="full">
												<option selected>�ء��Ҿ</option>
												<option>����</option>
												<option>����ͧ</option>
											</select></li>
										<li>
											<label for="#">
												<span>�ӷ���ͧ���</span>
											</label>
											<input class="full" type="text" name="textfield"></li>
										<li>
											<label for="#">
												<span>�ѧ��Ѵ</span>
											</label>
											<select class="full" id="province" onchange="showDistrict(this.value);" name="province">
												<option value="0" selected>�ء�ѧ��Ѵ</option>
											</select></li>
										<li>
											<label for="#">
												<span>ࢵ/�����</span>
											</label>
											<select class="full" id="district" name="district">
												<option value="0" selected>�ءࢵ/ �����</option>
											</select>
										</li>
									</ol>
								</fieldset>
								<p class="blank"><a class="b80" href="#">����</a></p>
							</form>
							<p><asp:label id="halfBanner" runat="server"></asp:label></p>
						</div>
					</div>
					<div id="u_know">
						<!--Did u alredy know?-->
						<h1>�س�������������...?</h1>
						<ul>
							<li class="part">
								<strong>��ûзСѹ������������§ 50 �������õ�ͪ������ </strong>�硷�������١������ж١�����§仢�ҧ˹�Ҵ����ç 
								30 �֧ 60 ��Ңͧ���˹ѡ��Ǣͧ������ҹ�鹾ǡ�Ҩж١�����§��������ö 
								������Ѻ�ѹ�����������ͧ������������Ƿ������Ѻ�ѹ�������ҧ�ع�ç(�����Ҩ�֧����Ե)��ؤ����������ö 
								�ǡ���Ҩ�ж١�����§�͡�ҡ���ö�ҧ˹�ҵ�ҧ�����蹡ѹ<br>
								<img style="FLOAT: left; MARGIN: 5px 10px 5px 0px" src="../scripts+pics/images/child_seat.jpg"
									alt="" height="90" width="100"><strong>�ѹ����ʹ���</strong>�������硹�����躹�ѡ 
								㹡�ûз�����ö������硶١�պ�Ѵ�����ҧ��Ǣͧ�س��Ъ����ǹ����ö�����Ҥس��������Ѵ������ 
								�硡�ж١�¡�͡�ҡᢹ�ͧ�س �س�������ö���������� 
								����Ӥѭ��Ҥس�������ҡ���˹<br>
								<strong>�ѹ�ѹ�����蹡ѹ</strong>���ФҴ����Ѵ�����¡Ѻ��Ǥس��������͡Ѻ���ͧ��
								<strong>�Ըշ���ʹ��·���ش����Ѻ���㹡���Թ�ҧ��ö¹�������й�����������Ѻ�硷����������Ѻ���˹ѡ�����Т�Ҵ��Ǣͧ�ǡ��
								</strong>
							</li>
						</ul>
					</div>
					<div id="sponsor_ads">
						<!--Sponsor Links-->
						<h1>���ʹѺʹع</h1>
						<ul>
							<div id="sponsor">
								<li>
									<div><asp:Label id="banner1" runat="server"></asp:Label></div>
									<asp:Label id="banner1_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner1_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner2" runat="server"></asp:Label></div>
									<asp:Label id="banner2_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner2_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner3" runat="server"></asp:Label></div>
									<asp:Label id="banner3_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner3_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner4" runat="server"></asp:Label></div>
									<asp:Label id="banner4_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner4_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner5" runat="server"></asp:Label></div>
									<asp:Label id="banner5_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner5_txt" runat="server"></asp:Label></p>
								</li>
							</div>
							<li class="banner">
								<span>
									<asp:Label id="ads1" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads2" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads3" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads4" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads5" runat="server"></asp:Label>
								</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<startfooter:startfooter id="startfooter" runat="server"></startfooter:startfooter>
		</div>
		<script language="javascript">
		showBrands(1);
		startRandom();
		
		//startSponsor();
		function startSponsor(){
			autoonclick.part_start.showRamDom(txtBack);
		}
		function txtBack(response){
			var show1 = document.getElementById("sponsor");
			show1.innerHTML = response.value;
		}
		//Sponsor
		
		
		
		//startRandom();
		function startRandom(){
			autoonclick.part_start.showRamDom(txtRandom);
		}
		function txtRandom(response){
			var show1 = document.getElementById("randomShow");
			show1.innerHTML = response.value;
			//show1.innerHTML ="";
		}
		//Random
		
		
		
		/* Start Condition Interactive */
		function showBrands(cat){
				autoonclick.showBrands.showBrands(cat,listBrands);
				
				var modelChooser = document.getElementById("model");
				modelChooser.options.length = 1;
				
				autoonclick.showBrands.showType(cat,showType);
				autoonclick.showBrands.showYear(showYear);
				autoonclick.showBrands.showPrice1(cat,showPrice1);
				autoonclick.showBrands.showPrice2(cat,showPrice2);
				autoonclick.showBrands.showCC1(cat,showCC1);
				autoonclick.showBrands.showCC2(cat,showCC2);
				autoonclick.showBrands.showProvinces(listProvince);
				
		}
		
		
		/* listBrands */
		function listBrands(res){
			var brandChooser = document.getElementById("brands");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showType */
		function showType(res){
			var typeChooser = document.getElementById("carType");
			typeChooser.options.length = 1;
			var x = res.value;
			typedb = x.split("!");
						
			var db="";
			for (var i = 0; i < typedb.length; i++) {
				db = typedb[i].split(":");
				typeChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showYear */
		function showYear(res){
						var typeYearSt = document.getElementById("yearst");
						var typeYearEnd = document.getElementById("yearend");
						typeYearSt.options.length = 1;
						typeYearEnd.options.length = 1;
						var x = res.value;
						//alert(x);
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typeYearSt.options[i + 1] = new Option(db[1], db[0]);
							typeYearEnd.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					
		/* showPrice1 */
		function showPrice1(res){
						var typePriceSt = document.getElementById("pricest");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					
		/* showPrice2 */			
		function showPrice2(res){
						var typePriceSt = document.getElementById("priceend");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					
		/* showCC1 */			
		function showCC1(res){
						var typePriceSt = document.getElementById("ccst");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					
		/* showCC2 */			
		function showCC2(res){
						var typePriceSt = document.getElementById("ccend");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
		/* listProvince */			
		function listProvince(res){
			var brandChooser = document.getElementById("province");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showModels */
		function showModels(brand,cat){
				autoonclick.showBrands.showModels(brand,cat,listModels);
		}
		
		/* listModels */
		function listModels(res){
			var modelChooser = document.getElementById("model");
			modelChooser.options.length = 1;
			var x = res.value;
			modeldb = x.split("!");
			var db="";
			for (var i = 0; i < modeldb.length; i++) {
				db = modeldb[i].split(":");
				modelChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showDistrict */
		function showDistrict(prov){
				autoonclick.showBrands.showDistricts(prov,listDistricts);
		}
		
		/* listDistricts */
		function listDistricts(res){
			var brandChooser = document.getElementById("district");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		</script>
	</body>
</HTML>
