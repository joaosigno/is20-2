Imports System.Data
Imports System.Data.OleDb
Module TruckDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getBrand(ByVal TruckId As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Brand.Brand_name, Truck.Truck_Model, Truck.Truck_SubModel, CarType.CarType_Name FROM Truck INNER JOIN Brand ON Truck.Truck_Brand = Brand.Brand INNER JOIN CarType ON Truck.Truck_Type = CarType.CarType WHERE (Truck.Truck_Id = " & TruckId & ") AND (CarType.Category = 3)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item(0) & " " & Ans_ID.Item(1) & " " & Ans_ID.Item(2) & ", " & Ans_ID.Item(3)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getCarType(ByVal TruckId As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Truck_Type FROM Truck WHERE (Truck.Truck_Id = " & TruckId & ") "

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item(0)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getPrice(ByVal TruckId As Integer) As Double
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As Double

        sql = "SELECT Truck_Price FROM Truck WHERE (Truck.Truck_Id = " & TruckId & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item(0)) Then
                search_statement = Ans_ID.Item(0)
            Else
                search_statement = 0
            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getPostDate(ByVal TruckId As Integer) As Date
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim postDate As Date

        sql = "SELECT Truck_Post FROM Truck WHERE (Truck.Truck_Id = " & TruckId & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then

            If Not IsDBNull(Ans_ID.Item("Truck_Post")) Then
                postDate = Ans_ID.Item("Truck_Post")
            Else
                postDate = Nothing
            End If

        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return postDate
    End Function
    Function getMainPic(ByVal Truckid As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Truck.Truck_Image1 FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item(3)) Then
                tmp_answer = "\userData" & "\" & Ans_ID.Item("Customer_Username") & "\" & Ans_ID.Item("Notice_Id") & "\" & Ans_ID.Item("NoticeDetail_Id") & "\" & Ans_ID.Item("Truck_Image1")
            Else
                tmp_answer = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_60x45.gif"
                'tmp_answer = "\pics\objects\noimage3.gif"

            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getMainPic2(ByVal Truckid As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Truck.Truck_Image1 FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item("Truck_Image1")) Then
                tmp_answer = "\userData" & "\" & Ans_ID.Item("Customer_Username") & "\" & Ans_ID.Item("Notice_Id") & "\" & Ans_ID.Item("NoticeDetail_Id") & "\" & Ans_ID.Item("Truck_Image1")
            Else
                tmp_answer = "no_image_60x45.gif"
                'tmp_answer = "\pics\objects\noimage3.gif"

            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getMainPic2(ByVal Truckid As Integer, ByVal picNo As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        Select Case picNo
            Case 2
                sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Truck.Truck_Image2 as img FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"
            Case 3
                sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Truck.Truck_Image3 as img FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"
            Case 4
                sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Truck.Truck_Image4 as img FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"
            Case 5
                sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Truck.Truck_Image5 as img FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"
        End Select
        'sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Truck.Truck_Image1 FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item("img")) Then
                tmp_answer = "\userData" & "\" & Ans_ID.Item("Customer_Username") & "\" & Ans_ID.Item("Notice_Id") & "\" & Ans_ID.Item("NoticeDetail_Id") & "\" & Ans_ID.Item("img")
            Else
                tmp_answer = "no_image_60x45.gif"
                'tmp_answer = "\pics\objects\noimage3.gif"

            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function

    Function getAllPic(ByVal Truckid As Integer) As Array
        Dim tmp_answer() As String
        ReDim tmp_answer(5)
        Dim i As Integer


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, Truck.Truck_Image1,Truck.Truck_Image2,Truck.Truck_Image3,Truck.Truck_Image4,Truck.Truck_Image5, NoticeDetail.NoticeDetail_Id FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Truck.Truck_Id = " & Truckid & ") AND (Notice.Notice_Category = 3)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then

            'tmp_answer.SetValue("\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\", 0)
            For i = 1 To 5
                If Not IsDBNull(Ans_ID.Item(i + 1)) Then
                    tmp_answer.SetValue("\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\" & Ans_ID.Item(7) & "\" & Ans_ID.Item(i + 1), i)
                Else
                    tmp_answer.SetValue("noimage3.gif", i)
                    'tmp_answer.SetValue("\\pics\\objects\\noimage3.gif", i)
                End If
            Next

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getNumPic(ByVal Truckid) As Integer
        Dim tmp As Array
        Dim numpics As Integer
        numpics = 0
        Dim i As String


        tmp = getAllPic(Truckid)
        For Each i In tmp
            If (i <> "noimage3.gif") And (i <> "") Then
                numpics = numpics + 1
            End If
        Next

        Return numpics
    End Function
    Function getTruckInfo(ByVal Truckid As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Province.Province_Name, Truck.Truck_Year, Truck.Truck_Accident, Truck.Truck_Insurrance, Truck.Truck_Miles, Truck.Truck_MilesType, Truck.Truck_CC,  Truck.Truck_Power, Truck.Truck_PowerType, EngineType.EngineType_Name, Color.Color_Name, Truck.Truck_Metalic,Gear.Gear_Name, Truck.Truck_Accessory, Truck.Truck_Information FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN Province ON Customer.Customer_Province = Province.Province LEFT OUTER JOIN Gear ON Truck.Truck_Gears = Gear.Gear LEFT OUTER JOIN Color ON Truck.Truck_Color = Color.Color LEFT OUTER JOIN EngineType ON Truck.Truck_EngineType = EngineType.EngineType WHERE (Notice.Notice_Category = 3) and (Truck.Truck_Id = " & Truckid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            tmp_answer = Ans_ID.Item("Province_Name")
            If Not IsDBNull(Ans_ID.Item("Truck_Year")) Then
                tmp_answer = tmp_answer & ", " & Right(Ans_ID.Item("Truck_Year"), 4)
            Else
                tmp_answer = tmp_answer & ",<span class='Font_orange'> ö����!</span>"
            End If

            If Not IsDBNull(Ans_ID.Item("Truck_Accident")) Then
                If Ans_ID.Item("Truck_Accident") = "1" Then
                    tmp_answer = tmp_answer & ", ö���غѵ��˵�(�ѧ������)"
                Else
                    tmp_answer = tmp_answer & ", ö������غѵ��˵�"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Truck_Insurrance")) Then
                If Ans_ID.Item("Truck_Insurrance") = "1" Then
                    tmp_answer = tmp_answer & ", ö�ջ�Сѹ"
                Else
                    tmp_answer = tmp_answer & ", ö����ջ�Сѹ"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Truck_Miles")) Then
                tmp_answer = tmp_answer & ", " & FormatNumber(Ans_ID.Item("Truck_Miles"), 0) & " " & Ans_ID.Item("Truck_MilesType")
            End If

            tmp_answer = tmp_answer & ", " & Ans_ID.Item("Truck_CC") & "cc"

            If Not IsDBNull(Ans_ID.Item("Truck_Power")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Truck_Power") & " " & Ans_ID.Item("Truck_PowerType")
            End If

            tmp_answer = tmp_answer & ", " & Ans_ID.Item("EngineType_Name")
            tmp_answer = tmp_answer & ", " & Ans_ID.Item("Color_Name")

            If Not IsDBNull(Ans_ID.Item("Truck_Metalic")) Then
                tmp_answer = tmp_answer & " �����Ԥ"
            End If

            If Not IsDBNull(Ans_ID.Item("Gear_Name")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Gear_Name")
            End If



            Dim Qaccess As Queue
            Dim access As Accessory
            Dim i As Integer, n As Integer

            Qaccess = getTruckAccessory(Truckid)
            n = Qaccess.Count
            If n > 3 Then
                For i = 1 To 3
                    access = Qaccess.Dequeue
                    tmp_answer = tmp_answer & ", " & AccesoryDB.getTruckAccessName(access.id)
                Next
            Else
                For i = 1 To n
                    access = Qaccess.Dequeue
                    tmp_answer = tmp_answer & ", " & AccesoryDB.getTruckAccessName(access.id)
                Next
            End If




            If Not IsDBNull(Ans_ID.Item("Truck_Information")) Then
                If Ans_ID.Item("Truck_Information").length <= 40 Then
                    tmp_answer = tmp_answer & ", " & Ans_ID.Item("Truck_Information")
                Else
                    tmp_answer = tmp_answer & ", " & Left(Ans_ID.Item("Truck_Information"), 40) & "..."
                End If

            End If


        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function

    Function getAccesory_bak(ByVal accessory As String) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim reader As OleDbDataReader
        Dim sql As String
        Dim i As Integer = 0
        Dim n As Integer = 1
        Dim ans As String

        ' For n = 1 To 3
        sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM Truck_ACCESSORY ORDER BY  ACCESSORY "
        mycommand = New OleDbCommand(sql, myconn)
        reader = mycommand.ExecuteReader()

        Do While reader.Read()
            If i <= Len(accessory) - 1 Then
                If Mid(accessory, Len(accessory) - i, 1) = "1" Then
                    ans = ans & "," & reader.Item("ACCESSORY_NAME")
                End If

                i = i + 1
            End If
        Loop

        mycommand.Dispose()
        reader.Close()
        ' Next

        myconn.Close()
        If ans = "" Then
            ans = ",-"
        End If

        Return Right(ans, Len(ans) - 1)
    End Function
    Function getAccesory(ByVal truckid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim reader As OleDbDataReader
        Dim sql As String
        Dim ans As String

        sql = "SELECT Truck_Accessory.Accessory_Name FROM TAccessory INNER JOIN Truck_Accessory ON TAccessory.CAccessory_AccID = Truck_Accessory.Accessory WHERE (TAccessory.CAccessory_TruckID = " & truckid & ")"
        mycommand = New OleDbCommand(sql, myconn)
        reader = mycommand.ExecuteReader()

        While reader.Read()

            ans = ans & "," & reader.Item("ACCESSORY_NAME")

        End While


        mycommand.Dispose()
        reader.Close()
        myconn.Close()


        If ans = "" Then
            ans = ",-"
        End If

        Return Right(ans, Len(ans) - 1)
    End Function

    '--------  Send 2 Friend -------------------
    Function getSend2Fr(ByVal myCar As Truck) As String
        Dim picURL As String = ConfigurationSettings.AppSettings("picURL")
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")
        Dim picVD As String = ConfigurationSettings.AppSettings("picVD")
        Dim myCust As A_Customer
        Dim myCustNo As Integer
        Dim SQL As String
        Dim pri As String


        myCustNo = TruckDB.getTruckOwnerID(myCar.id)
        myCust = CustomerDB.getA_customer(myCustNo)

        SQL = " <HTML>"
        SQL = SQL & " 	<HEAD>"
        SQL = SQL & " 		<title>AUTO-ONCLICK .explore Mobility</title>"
        SQL = SQL & " 		<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"">"
        SQL = SQL & " 		<style type=""text/css"">BODY { MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px }"
        SQL = SQL & " 	</style>"
        'picURL
        SQL = SQL & " 		<LINK href=""" & picURL & "css/css.css"" type=""text/css"" rel=""stylesheet"">"
        SQL = SQL & " 			<style type=""text/css"">.style3 { FONT-WEIGHT: bold; FONT-SIZE: xx-large }"
        SQL = SQL & " 	.style4 { FONT-WEIGHT: bold; FONT-SIZE: x-large; FONT-FAMILY: Arial, Helvetica, sans-serif }"
        SQL = SQL & " 	.style5 { FONT-SIZE: 12px }"
        SQL = SQL & " 	.style6 { FONT-SIZE: 11px; FONT-FAMILY: Arial, Helvetica, sans-serif }"
        SQL = SQL & " 	</style>"
        SQL = SQL & " 	</HEAD>"
        SQL = SQL & " 	<body>"
        SQL = SQL & " 		<table cellSpacing=""0"" cellPadding=""0"" width=""650"" border=""0"">"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""30"">&nbsp;</td>"
        SQL = SQL & " 			</tr>"

        SQL = SQL & " 						<tr class=""standard_font"">"
        SQL = SQL & " 							<td width=""700"" height=""20""><IMG height=""1"" src=""" & picURL & "images/objects/000000.gif"" width=""100%""></td>"
        SQL = SQL & " 						</tr>"

        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table cellSpacing=""0"" cellPadding=""0"" width=""600"" align=""center"" border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""2"">"
        SQL = SQL & " 								<div align=""right""><IMG height=""38"" src=""" & picURL & "images/main_table/ao_logo_business.jpg"" width=""119""></div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td class=""style3"" colSpan=""2"">"
        SQL = SQL & " 								<table width=""100%"">"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td width=""50%"">" & BrandDB.getBrandName(myCar.Brand) & " " & myCar.Model & "</td>"
        SQL = SQL & " 										<td width=""50%""></td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 								</table>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td>&nbsp;</td>"
        SQL = SQL & " 							<td>&nbsp;</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td><IMG height=""1"" src=""" & picURL & "images/objects/no.gif"" width=""1""></td>"
        SQL = SQL & " 							<td><IMG height=""1"" src=""" & picURL & "images/objects/no.gif"" width=""1""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""350"">"
        SQL = SQL & " 								<table class=""standard_font"" cellSpacing=""0"" cellPadding=""0"" width=""284"" border=""0"">"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td width=""48%""><IMG height=""1"" src=""" & picURL & "images/objects/no.gif"" width=""1""></td>"
        SQL = SQL & " 										<td width=""4%""><IMG height=""1"" src=""" & picURL & "images/objects/no.gif"" width=""1""></td>"
        SQL = SQL & " 										<td width=""48%"" bgColor=""#ffffff""><IMG height=""1"" src=""" & picURL & "images/objects/no.gif"" width=""1""></td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & CarTypeDB.getStatusName(myCar.Type, 3) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" height=""20"">&#3619;&#3634;&#3588;&#3634;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        If checkNullStr_Line(myCar.Price) = "-" Then
            pri = "- �ҷ"
        Else
            pri = FormatNumber(checkNullStr_Line(myCar.Price), 2, , , TriState.True) & " �ҷ"
        End If

        SQL = SQL & " 											" & pri & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & StatusDB.getStatusName(myCar.Status) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3611;&#3637;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & changeLine2Zero(checkNullStr_Line(myCar.Year)) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.Miles) & " " & myCar.MilesType & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & EngineTypeDB.getEngineName(myCar.EngineType) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.Power) & " " & myCar.PowerType & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3626;&#3637;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & ColorDB.getColorName(myCar.Color) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3614;&#3621;&#3634;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.NumPrao) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3614;&#3621;&#3634;&#3586;&#3633;&#3610;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.NumPraoDrive) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3609;&#3657;&#3635;&#3627;&#3609;&#3633;&#3585;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.NumWeightLoad) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3609;&#3657;&#3635;&#3627;&#3609;&#3633;&#3585;&#3619;&#3606;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.NumWeight) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & GearDB.getGearType(myCar.Gears) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.NumGear) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.NumPump) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">&nbsp;" & checkNullStr_Line(myCar.CC) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3611;&#3619;&#3632;&#3605;&#3641;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">&nbsp;<asp:label id=""doors"" runat=""server""></asp:label></td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3609;&#3633;&#3656;&#3591;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.NumSeat) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3629;&#3633;&#3605;&#3619;&#3634;&#3626;&#3636;&#3657;&#3609;&#3648;&#3611;&#3621;&#3639;&#3629;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.FuelConsume) & " km/�Ե�</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3588;&#3623;&#3634;&#3617;&#3592;&#3640;&#3606;&#3633;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.FuelTank) & " �Ե�</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        SQL = SQL & " 											" & checkNullStr_Line(myCar.LastCheck) & "</td>"
        SQL = SQL & " 									</tr>"

        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        If checkNullDBNum(myCar.Accident) = 1 Then
            SQL = SQL & " 											ö���غѵ��˵�</td>"
        Else
            SQL = SQL & " 											ö������غѵ��˵�</td>"
        End If
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td width=""48%"" height=""20""><span class=""style6"">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</span></td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"
        If checkNullDBNum(myCar.Insurrance) = 1 Then
            SQL = SQL & " 											ö�ջ�Сѹ</td>"
        Else
            SQL = SQL & " 											ö����ջ�Сѹ</td>"
        End If
        'SQL = SQL & " 											<asp:label id=""insur"" runat=""server""></asp:label></td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</td>"
        SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""" & picURL & "images/objects/no.gif"" width=""5"">"

        SQL = SQL & " 											" & checkNullStr_Line(myCar.BodyId) & "</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 								</table>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td vAlign=""top"" align=""right"" width=""350"">"
        SQL = SQL & " 								<table height=""217"" cellSpacing=""0"" cellPadding=""0"" width=""285"" align=""left"" border=""1"">"
        SQL = SQL & " 									<tr>"
        SQL = SQL & " 										<td bgColor=""#ffffff"">"
        '===========image ===============
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim pic As String
        If myCar.Image1 <> "" Then

            a = New Bitmap(HttpContext.Current.Server.MapPath("/userData/" & myCust.username & "/" & NoticeDB.getImgPath(myCust.id, myCar.id, 3) & "/" & myCar.Image1))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 285)
            IUrl = userURL & myCust.username & "/" & NoticeDB.getImgPath(myCust.id, myCar.id, 3) & "/" & myCar.Image1
        Else
            a = New Bitmap(HttpContext.Current.Server.MapPath(picVD & "/images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 285)
            IUrl = picURL & "images/objects/no_image_250x188.gif"
        End If
        pic = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"
        SQL = SQL & " 											<div align=""center"">" & pic & "</div>"
        SQL = SQL & " 										</td>"
        SQL = SQL & " 									</tr>"
        SQL = SQL & " 								</table>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""2"">&nbsp;</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr class=""standard_font"">"
        SQL = SQL & " 							<td class=""style6"" colSpan=""2"" height=""26""><strong>&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;:</strong>"
        SQL = SQL & " 								" & TruckDB.getAccesory(myCar.id) & "</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr class=""standard_font"">"
        SQL = SQL & " 							<td class=""style6"" colSpan=""2"" height=""20""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;:"
        SQL = SQL & " 								</strong>"
        SQL = SQL & " 								" & checkNullStr_Line(myCar.Information) & "</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr class=""standard_font"">"

        SQL = SQL & " 							<td class=""style4"" colSpan=""2"" height=""60"">" & pri & "</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr class=""standard_font"">"
        SQL = SQL & " 							<td colSpan=""2"" height=""20"">&nbsp;</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 					<p>&nbsp;</p>"
        SQL = SQL & " 					<p><FONT face=""Tahoma""></FONT>&nbsp;</p>"
        SQL = SQL & " 					<p>&nbsp;</p>"
        SQL = SQL & " 					<p>&nbsp;</p>"
        SQL = SQL & " 					<p>&nbsp;</p>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table cellSpacing=""0"" cellPadding=""0"" width=""600"" align=""center"" border=""0"">"
        SQL = SQL & " 						<tr class=""standard_font"">"
        SQL = SQL & " 							<td width=""700"" height=""20""><IMG height=""1"" src=""" & picURL & "images/objects/000000.gif"" width=""100%""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr class=""standard_font"">"
        SQL = SQL & " 							<td height=""20"">"
        SQL = SQL & " 								<p class=""style6"">" & myCust.name & "<br>"
        '================ Address ================================
        Dim address As String
        If myCust.type = 0 Then
            address = " �." & DistrictDB.getDistrictName(myCust.district) & " �." & ProvinceDB.getProvinceName(myCust.province)
        Else
            address = myCust.address & " �." & DistrictDB.getDistrictName(myCust.district) & " �." & ProvinceDB.getProvinceName(myCust.province)
        End If
        SQL = SQL & " 									" & address & "<br>"
        '================ Telno ================================
        Dim telno As String
        telno = "�������Ѿ��: " & myCust.phone1 & " Fax: "
        If myCust.fax <> "" Then
            telno = telno & myCust.fax
        Else
            telno = telno & " -"
        End If
        SQL = SQL & " 									" & telno & "<br>"
        '================ email ================================
        Dim em As String
        If myCust.email <> "" Then
            em = "Email: " & myCust.email
        Else
            em = "Email: -"
        End If
        '================ homepage ================================
        Dim homep As String
        If myCust.homepage <> "" Then
            homep = "<a href='http://" & myCust.homepage & "' target='_blank'>" & myCust.homepage & "</a>"
            'homep.NavigateUrl = "http://" & myCust.homepage
            'homep.Target = "_blank"
            'homep.Text = "http://" & myCust.homepage
        Else
            homep = ""
        End If

        SQL = SQL & " 									" & em & "<FONT face=""Tahoma"">&nbsp;</FONT>" & homep & "</p>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>&nbsp;</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 		</table>"
        SQL = SQL & " 	</body>"
        SQL = SQL & " </HTML>"

        '========================================================================================================

        'SQL = SQL & " <HTML>"
        'SQL = SQL & " 	<HEAD>"
        'SQL = SQL & " 		<title>AUTO-ONCLICK .explore Mobility</title>"
        'SQL = SQL & " 		<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"">"
        'SQL = SQL & " 		<style type=""text/css"">BODY {"
        'SQL = SQL & " 	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"
        'SQL = SQL & " }"
        'SQL = SQL & " </style>"
        'SQL = SQL & " 		<LINK href=""../../../css/css.css"" type=""text/css"" rel=""stylesheet"">"
        'SQL = SQL & " 			<style type=""text/css"">.style3 {"
        'SQL = SQL & " 	FONT-WEIGHT: bold; FONT-SIZE: xx-large"
        'SQL = SQL & " }"
        'SQL = SQL & " .style4 {"
        'SQL = SQL & " 	FONT-WEIGHT: bold; FONT-SIZE: x-large"
        'SQL = SQL & " }"
        'SQL = SQL & " .style5 {"
        'SQL = SQL & " 	FONT-SIZE: 12px"
        'SQL = SQL & " }"
        'SQL = SQL & " .style6 {"
        'SQL = SQL & " 	FONT-SIZE: 11px; FONT-FAMILY: Arial, Helvetica, sans-serif"
        'SQL = SQL & " }"
        'SQL = SQL & " .style7 {"
        'SQL = SQL & " 	FONT-WEIGHT: bold; FONT-SIZE: x-large; FONT-FAMILY: Arial, Helvetica, sans-serif"
        'SQL = SQL & " }"
        'SQL = SQL & " </style>"
        'SQL = SQL & " 	</HEAD>"
        'SQL = SQL & " 	<body>"
        'SQL = SQL & " 		<table cellSpacing=""0"" cellPadding=""0"" width=""650"" border=""0"">"
        'SQL = SQL & " 			<tr>"
        'SQL = SQL & " 				<td height=""30"">&nbsp;</td>"
        'SQL = SQL & " 			</tr>"
        'SQL = SQL & " 			<tr>"
        'SQL = SQL & " 				<td>"
        'SQL = SQL & " 					<table cellSpacing=""0"" cellPadding=""0"" width=""600"" align=""center"" border=""0"">"
        'SQL = SQL & " 						<tr>"
        'SQL = SQL & " 							<td colSpan=""2"">"
        'SQL = SQL & " 								<div align=""right""><IMG height=""38"" src=""../images/main_table/ao_logo_business.jpg"" width=""119""></div>"
        'SQL = SQL & " 							</td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr>"
        'SQL = SQL & " 							<td class=""style3"" colSpan=""2"">"
        'SQL = SQL & " 								<table width=""100%"">"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td width=""50%""><asp:label id=""carBrand"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 										<td width=""50%""></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 								</table>"
        'SQL = SQL & " 							</td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr>"
        'SQL = SQL & " 							<td>&nbsp;</td>"
        'SQL = SQL & " 							<td>&nbsp;</td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr>"
        'SQL = SQL & " 							<td><IMG height=""1"" src=""../images/objects/no.gif"" width=""1""></td>"
        'SQL = SQL & " 							<td><IMG height=""1"" src=""../images/objects/no.gif"" width=""1""></td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr>"
        'SQL = SQL & " 							<td width=""350"">"
        'SQL = SQL & " 								<table class=""standard_font"" cellSpacing=""0"" cellPadding=""0"" width=""284"" border=""0"">"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td width=""48%""><IMG height=""1"" src=""../images/objects/no.gif"" width=""1""></td>"
        'SQL = SQL & " 										<td width=""4%""><IMG height=""1"" src=""../images/objects/no.gif"" width=""1""></td>"
        'SQL = SQL & " 										<td width=""48%"" bgColor=""#ffffff""><IMG height=""1"" src=""../images/objects/no.gif"" width=""1""></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""cate"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" height=""20"">&#3619;&#3634;&#3588;&#3634;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""price"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""carStatus"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3611;&#3637;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""carYear"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""mi"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""engType"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""engPower"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3626;&#3637;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""color"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3614;&#3621;&#3634;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""praoNum"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3614;&#3621;&#3634;&#3586;&#3633;&#3610;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""praoDrive"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" height=""20"">&#3609;&#3657;&#3635;&#3627;&#3609;&#3633;&#3585;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""truckLoad"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" height=""20"">&#3609;&#3657;&#3635;&#3627;&#3609;&#3633;&#3585;&#3619;&#3606;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""truckWg"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""gearsSys"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""gearsNum"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""pisNum"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">&nbsp;<asp:label id=""CC"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"

        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3611;&#3619;&#3632;&#3605;&#3641;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">&nbsp;<asp:label id=""doors"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3609;&#3633;&#3656;&#3591;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""seats"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3629;&#3633;&#3605;&#3619;&#3634;&#3626;&#3636;&#3657;&#3609;&#3648;&#3611;&#3621;&#3639;&#3629;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""consume"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3588;&#3623;&#3634;&#3617;&#3592;&#3640;&#3606;&#3633;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""tank"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""lastCheck"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""accident"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td width=""48%"" height=""20""><span class=""style6"">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</span></td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""insur"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" height=""20"">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</td>"
        'SQL = SQL & " 										<td height=""20"">&nbsp;</td>"
        'SQL = SQL & " 										<td class=""style6"" width=""48%"" bgColor=""#ffffff"" height=""20""><IMG height=""10"" src=""../images/objects/no.gif"" width=""5"">"
        'SQL = SQL & " 											<asp:label id=""carNo"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 								</table>"
        'SQL = SQL & " 							</td>"
        'SQL = SQL & " 							<td vAlign=""top"" align=""right"" width=""350"">"
        'SQL = SQL & " 								<table height=""217"" cellSpacing=""0"" cellPadding=""0"" width=""285"" align=""left"" border=""1"">"
        'SQL = SQL & " 									<tr>"
        'SQL = SQL & " 										<td bgColor=""#ffffff"">"
        'SQL = SQL & " 											<div align=""center""><asp:label id=""image1"" CssClass=""Font_black_LH_17px"" runat=""server""></asp:label></div>"
        'SQL = SQL & " 										</td>"
        'SQL = SQL & " 									</tr>"
        'SQL = SQL & " 								</table>"
        'SQL = SQL & " 							</td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr>"
        'SQL = SQL & " 							<td colSpan=""2"">&nbsp;</td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr class=""standard_font"">"
        'SQL = SQL & " 							<td class=""style6"" colSpan=""2"" height=""20""><strong>&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;:</strong>"
        'SQL = SQL & " 								<asp:label id=""Accessory"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr class=""standard_font"">"
        'SQL = SQL & " 							<td class=""style6"" colSpan=""2"" height=""20""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;:"
        'SQL = SQL & " 								</strong>"
        'SQL = SQL & " 								<asp:label id=""moreInfo"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr class=""standard_font"">"
        'SQL = SQL & " 							<td class=""style7"" colSpan=""2"" height=""60""><asp:label id=""price2"" runat=""server""></asp:label></td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr class=""standard_font"">"
        'SQL = SQL & " 							<td colSpan=""2"" height=""20"">&nbsp;</td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 					</table>"
        'SQL = SQL & " 					<p>&nbsp;</p>"
        'SQL = SQL & " 					<p>&nbsp;</p>"
        'SQL = SQL & " 					<p>&nbsp;</p>"
        'SQL = SQL & " 					<p><FONT face=""Tahoma""></FONT>&nbsp;</p>"
        'SQL = SQL & " 					<p>&nbsp;</p>"
        'SQL = SQL & " 				</td>"
        'SQL = SQL & " 			</tr>"
        'SQL = SQL & " 			<tr>"
        'SQL = SQL & " 				<td>"
        'SQL = SQL & " 					<table cellSpacing=""0"" cellPadding=""0"" width=""600"" align=""center"" border=""0"">"
        'SQL = SQL & " 						<tr class=""standard_font"">"
        'SQL = SQL & " 							<td width=""700"" height=""20""><IMG height=""1"" src=""../images/objects/000000.gif"" width=""100%""></td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 						<tr class=""standard_font"">"
        'SQL = SQL & " 							<td height=""20"">"
        'SQL = SQL & " 								<p class=""style6""><asp:label id=""compName"" runat=""server""></asp:label><br>"
        'SQL = SQL & " 									<asp:label id=""addr"" runat=""server""></asp:label><br>"
        'SQL = SQL & " 									<asp:label id=""telNo"" runat=""server""></asp:label><br>"
        'SQL = SQL & " 									<asp:label id=""em"" runat=""server""></asp:label><FONT face=""Tahoma"">&nbsp;</FONT><asp:hyperlink id=""homep"" runat=""server""></asp:hyperlink></p>"
        'SQL = SQL & " 							</td>"
        'SQL = SQL & " 						</tr>"
        'SQL = SQL & " 					</table>"
        'SQL = SQL & " 				</td>"
        'SQL = SQL & " 			</tr>"
        'SQL = SQL & " 			<tr>"
        'SQL = SQL & " 				<td>&nbsp;</td>"
        'SQL = SQL & " 			</tr>"
        'SQL = SQL & " 		</table>"
        'SQL = SQL & " 	</body>"
        'SQL = SQL & " </HTML>"



        '=======================================================================================================


        Return SQL
    End Function
    '-------------------------------------------


    Function getTruckOwnerID(ByVal carid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "Select Notice.Notice_MemberId FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id WHERE (Truck.Truck_Id = " & carid & ") AND (Notice.Notice_Category = 3)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item("Notice_MemberId")
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement


    End Function
    Function getMaxTruckID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Truck_ID)+1 as cust_id FROM Truck"
        mycommand = New OleDbCommand(sql, myconn)

        If IsDBNull(mycommand.ExecuteScalar()) Then
            custid = 1
        Else
            custid = mycommand.ExecuteScalar()
        End If

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Function addNewTruck(ByVal v_brand As Integer, ByVal v_model As String, ByVal v_status As Integer, ByVal v_year As String, ByVal v_year2 As Integer, ByVal v_submodel As String, ByVal v_type As Integer, ByVal v_bodyid As String, ByVal v_engineType As Integer, ByVal v_cc As Integer, ByVal v_color As Integer, ByVal v_metalic As Boolean, ByVal v_power As String, ByVal v_powerType As String, ByVal v_gear As String, ByVal v_mile As String, ByVal v_mileType As String, ByVal v_numDoor As String, ByVal v_numGear As String, ByVal v_numSeat As String, ByVal v_numPump As String, ByVal v_numPrao As String, ByVal v_numWeightLoad As String, ByVal v_numPraoDrive As String, ByVal v_numWeight As String, ByVal v_fuelConsume As String, ByVal v_fuelTank As String, ByVal v_lastCheck As String, ByVal v_insur As String, ByVal v_price As String, ByVal v_acci As Boolean, ByVal v_access As Queue, ByVal v_info As String, ByVal v_img1 As String, ByVal v_img2 As String, ByVal v_img3 As String, ByVal v_img4 As String, ByVal v_img5 As String) As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String
        Dim carid As Integer = getMaxTruckID()

        Try

            sql = " INSERT INTO Truck"
            sql = sql & "(Truck_Id, Truck_Brand, Truck_Model, Truck_Status, Truck_Year, Truck_Year_Ord, Truck_SubModel, Truck_Type, Truck_BodyId, Truck_EngineType, "
            sql = sql & "Truck_CC, Truck_Color, Truck_Metalic, Truck_Power, Truck_PowerType, Truck_Gears, Truck_Miles, Truck_MilesType, Truck_NumDoor, "
            sql = sql & "Truck_NumGear, Truck_NumSeat, Truck_NumPump, Truck_NumPrao, Truck_NumWeightLoad, Truck_NumPraoDrive, Truck_NumWeight, "
            sql = sql & "Truck_FuelConsume, Truck_FuelTank, Truck_LastCheck, Truck_Insurrance, Truck_Price, Truck_Accident, Truck_Accessory, Truck_Information, "
            sql = sql & "Truck_Post, Truck_Image1, Truck_Image2, Truck_Image3, Truck_Image4, Truck_Image5)"
            sql = sql & " VALUES (" & carid & ", " & v_brand & ", " & String_chk.checkNullstr(v_model) & ", " & v_status & ", " & String_chk.checkNullstr(v_year) & "," & String_chk.checkNullNum2(v_year2) & ", " & String_chk.checkNullstr(v_submodel) & ", " & v_type & ", " & String_chk.checkNullstr(v_bodyid) & ", " & v_engineType & ", " & v_cc & ", " & v_color & ", " & String_chk.checkTrue(v_metalic) & ", " & String_chk.checkNullNum(v_power) & ", " & String_chk.checkNullstr(v_powerType) & ", " & String_chk.checkNullNum(v_gear) & ", " & String_chk.checkNullNum(v_mile) & ", " & String_chk.checkNullstr(v_mileType) & ", " & String_chk.checkNullNum(v_numDoor) & ", " & String_chk.checkNullNum(v_numGear) & ", " & String_chk.checkNullNum(v_numSeat) & ", " & String_chk.checkNullNum(v_numPump) & ", " & String_chk.checkNullNum(v_numPrao) & " ," & String_chk.checkNullNum(v_numWeightLoad) & " ," & String_chk.checkNullNum(v_numPraoDrive) & " ," & String_chk.checkNullNum(v_numWeight) & " ," & String_chk.checkNullNum(v_fuelConsume) & ", " & String_chk.checkNullNum(v_fuelTank) & ", " & String_chk.checkNullstr(v_lastCheck) & ", " & String_chk.checkNullNum(v_insur) & ", " & String_chk.checkNullNum(v_price) & ", " & String_chk.checkTrue(v_acci) & ", '999', " & String_chk.checkNullstr(v_info) & ", getdate()," & String_chk.checkNullstr(v_img1) & ", " & String_chk.checkNullstr(v_img2) & ", " & String_chk.checkNullstr(v_img3) & ", " & String_chk.checkNullstr(v_img4) & ", " & String_chk.checkNullstr(v_img5) & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            Dim v_acc As Accessory
            Dim TempObjQueue As IEnumerator = v_access.GetEnumerator()

            While (TempObjQueue.MoveNext)

                v_acc = TempObjQueue.Current
                sql = "INSERT INTO TAccessory VALUES(" & carid & "," & v_acc.id & "," & v_acc.type & ")"
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

            End While

            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try

        mycommand.Dispose()
        myconn.Close()

        Return carid
    End Function

    Function getTrucks(ByVal carList As String, ByVal orderBy As String) As Array
        Dim tmp As Array = Split(carList, ",")
        Dim truckinfo(tmp.Length) As Truck
        Dim i As Integer = 1


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM Truck WHERE Truck_ID in (" & carList & ") ORDER BY " & orderBy
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            truckinfo(i).id = Ans_ID.Item("Truck_Id")
            truckinfo(i).Brand = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Brand"))
            truckinfo(i).Model = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Model"))
            truckinfo(i).Status = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Status"))
            truckinfo(i).Year = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Year"))
            truckinfo(i).Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Year_Ord"))
            truckinfo(i).SubModel = String_chk.checkNullDBstr(Ans_ID.Item("Truck_SubModel"))
            truckinfo(i).Type = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Type"))
            truckinfo(i).BodyId = String_chk.checkNullDBstr(Ans_ID.Item("Truck_BodyId"))
            truckinfo(i).EngineType = String_chk.checkNullDBNum(Ans_ID.Item("Truck_EngineType"))
            truckinfo(i).CC = String_chk.checkNullDBNum(Ans_ID.Item("Truck_CC"))
            truckinfo(i).Color = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Color"))
            truckinfo(i).Metalic = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Metalic"))
            truckinfo(i).Power = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Power"))
            truckinfo(i).PowerType = String_chk.checkNullDBstr(Ans_ID.Item("Truck_PowerType"))
            truckinfo(i).Gears = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Gears"))
            truckinfo(i).Miles = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Miles"))
            truckinfo(i).MilesType = String_chk.checkNullDBstr(Ans_ID.Item("Truck_MilesType"))
            truckinfo(i).NumDoor = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumDoor"))
            truckinfo(i).NumGear = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumGear"))
            truckinfo(i).NumSeat = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumSeat"))
            truckinfo(i).NumPump = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumPump"))
            truckinfo(i).NumPrao = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumPrao"))
            truckinfo(i).NumWeightLoad = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumWeightLoad"))
            truckinfo(i).NumPraoDrive = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumPraoDrive"))
            truckinfo(i).NumWeight = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumWeight"))
            truckinfo(i).FuelConsume = String_chk.checkNullDBNum(Ans_ID.Item("Truck_FuelConsume"))
            truckinfo(i).FuelTank = String_chk.checkNullDBNum(Ans_ID.Item("Truck_FuelTank"))
            truckinfo(i).LastCheck = String_chk.checkNullDBstr(Ans_ID.Item("Truck_LastCheck"))
            truckinfo(i).Insurrance = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Insurrance"))
            truckinfo(i).Price = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Price"))
            truckinfo(i).Accident = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Accident"))
            truckinfo(i).Accessory = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Accessory"))
            truckinfo(i).Information = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Information"))
            truckinfo(i).Post = String_chk.checkNullDBDate(Ans_ID.Item("Truck_Post"))
            truckinfo(i).Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image1"))
            truckinfo(i).Image2 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image2"))
            truckinfo(i).Image3 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image3"))
            truckinfo(i).Image4 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image4"))
            truckinfo(i).Image5 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image5"))
            truckinfo(i).remark = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Remark"))
            truckinfo(i).Accessory1 = getTruckAccessory(Ans_ID.Item("Truck_Id"))
            i = i + 1
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return truckinfo
    End Function
    Function getRanTruck() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQCar As New Queue
        Dim carInfo As CarDB.RandomCar

        sql = "SELECT     Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, "
        sql = sql & " Truck.Truck_id,Brand.Brand_name, Truck.Truck_model,Customer.Customer_Id, Status.Status_Name, "
        sql = sql & " Truck.Truck_Year, Truck.Truck_Year_Ord,Truck.Truck_Image1"
        sql = sql & " FROM         NoticeDetail INNER JOIN"
        sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
        sql = sql & " Truck ON NoticeDetail.NoticeDetail_DataId = Truck.Truck_Id INNER JOIN"
        sql = sql & " Status ON Truck.Truck_Status = Status.Status INNER JOIN"
        sql = sql & " Brand ON Truck.Truck_Brand = Brand.Brand"
        sql = sql & " WHERE     (Notice.Notice_Category = 3) "
        sql = sql & " AND (NoticeDetail.Detail_show = 1) "
        sql = sql & " AND (Notice.Notice_Show = 1) "
        sql = sql & " AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) "
        sql = sql & " AND (Notice.Notice_Status IN (2, 3))"
        sql = sql & " AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) "

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            carInfo.Customer_Username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            carInfo.Notice_Id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            carInfo.NoticeDetail_Id = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_Id"))
            carInfo.Car_Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image1"))
            carInfo.Car_Id = String_chk.checkNullDBNum(Ans_ID.Item("Truck_id"))
            carInfo.Brand_name = String_chk.checkNullDBstr(Ans_ID.Item("Brand_name"))
            carInfo.Model_Name = String_chk.checkNullDBstr(Ans_ID.Item("Truck_model"))
            carInfo.Customer_Id = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Id"))
            carInfo.Status_Name = String_chk.checkNullDBstr(Ans_ID.Item("Status_Name"))
            carInfo.Car_Year = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Year"))
            carInfo.Car_Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Year_Ord"))
            myQCar.Enqueue(carInfo)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQCar
    End Function

    Function getTruckAccessory(ByVal truckid As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim mycommand As OleDbCommand
        Dim sql As String


        Dim accessor As New Queue
        Dim tmp As Accessory
        sql = "SELECT * FROM TAccessory WHERE TAccessory.CAccessory_TruckID = " & truckid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            tmp.id = Ans_ID.Item("CAccessory_AccID")
            tmp.type = Ans_ID.Item("CAccessory_Type")
            accessor.Enqueue(tmp)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return accessor
    End Function
    Function getTruck(ByVal truckid As Integer) As Truck
        Dim truckInfo As New Truck

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM TRUCK WHERE TRUCK_ID = " & truckid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            truckInfo.id = Ans_ID.Item("Truck_Id")
            truckInfo.Brand = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Brand"))
            truckInfo.Model = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Model"))
            truckInfo.Status = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Status"))
            truckInfo.Year = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Year"))
            truckInfo.Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Year_Ord"))
            truckInfo.SubModel = String_chk.checkNullDBstr(Ans_ID.Item("Truck_SubModel"))
            truckInfo.Type = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Type"))
            truckInfo.BodyId = String_chk.checkNullDBstr(Ans_ID.Item("Truck_BodyId"))
            truckInfo.EngineType = String_chk.checkNullDBNum(Ans_ID.Item("Truck_EngineType"))
            truckInfo.CC = String_chk.checkNullDBNum(Ans_ID.Item("Truck_CC"))
            truckInfo.Color = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Color"))
            truckInfo.Metalic = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Metalic"))
            truckInfo.Power = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Power"))
            truckInfo.PowerType = String_chk.checkNullDBstr(Ans_ID.Item("Truck_PowerType"))
            truckInfo.Gears = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Gears"))
            truckInfo.Miles = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Miles"))
            truckInfo.MilesType = String_chk.checkNullDBstr(Ans_ID.Item("Truck_MilesType"))
            truckInfo.NumDoor = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumDoor"))
            truckInfo.NumGear = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumGear"))
            truckInfo.NumSeat = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumSeat"))
            truckInfo.NumPump = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumPump"))
            truckInfo.NumPrao = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumPrao"))
            truckInfo.NumWeightLoad = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumWeightLoad"))
            truckInfo.NumPraoDrive = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumPraoDrive"))
            truckInfo.NumWeight = String_chk.checkNullDBNum(Ans_ID.Item("Truck_NumWeight"))
            truckInfo.FuelConsume = String_chk.checkNullDBNum(Ans_ID.Item("Truck_FuelConsume"))
            truckInfo.FuelTank = String_chk.checkNullDBNum(Ans_ID.Item("Truck_FuelTank"))
            truckInfo.LastCheck = String_chk.checkNullDBstr(Ans_ID.Item("Truck_LastCheck"))
            truckInfo.Insurrance = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Insurrance"))
            truckInfo.Price = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Price"))
            truckInfo.Accident = String_chk.checkNullDBNum(Ans_ID.Item("Truck_Accident"))
            truckInfo.Accessory = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Accessory"))
            truckInfo.Information = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Information"))
            truckInfo.Post = String_chk.checkNullDBDate(Ans_ID.Item("Truck_Post"))
            truckInfo.Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image1"))
            truckInfo.Image2 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image2"))
            truckInfo.Image3 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image3"))
            truckInfo.Image4 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image4"))
            truckInfo.Image5 = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Image5"))
            truckInfo.remark = String_chk.checkNullDBstr(Ans_ID.Item("Truck_Remark"))
            truckInfo.Accessory1 = getTruckAccessory(Ans_ID.Item("Truck_Id"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return truckInfo
    End Function


    Sub editTruckRemark(ByVal truckid As Integer, ByVal remark As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE TRUCK "
        sql = sql & " SET TRUCK_Remark = " & String_chk.checkNullstr(remark)
        sql = sql & "WHERE (TRUCK_Id = " & truckid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub deleteTruckaccessory(ByVal truckid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM TAccessory WHERE TAccessory.CAccessory_Truckid = " & truckid

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub editTruckAccessory(ByVal truckid As Integer, ByVal access As Queue)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        deleteTruckaccessory(truckid)

        Dim v_acc As Accessory
        Dim TempObjQueue As IEnumerator = access.GetEnumerator()

        While (TempObjQueue.MoveNext)

            v_acc = TempObjQueue.Current
            sql = "INSERT INTO TAccessory VALUES(" & truckid & "," & v_acc.id & "," & v_acc.type & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

        End While

        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub editTruck(ByVal car As Truck)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Truck "
        sql = sql & " SET Truck_Brand = " & car.Brand & ", Truck_Model = " & String_chk.checkNullstr(car.Model) & ", Truck_Status = " & car.Status & ", Truck_Year = " & String_chk.checkNullstr(car.Year) & ", Truck_Year_Ord = " & String_chk.checkNullNum2(car.Year_Ord) & ", "
        sql = sql & "Truck_SubModel = " & String_chk.checkNullstr(car.SubModel) & ", Truck_Type = " & car.Type & ", Truck_BodyId = " & String_chk.checkNullstr(car.BodyId) & ", Truck_EngineType = " & car.EngineType & ", "
        sql = sql & "Truck_CC = " & car.CC & ", Truck_Color = " & car.Color & ", Truck_Metalic = " & car.Metalic & ", Truck_Power = " & String_chk.checkNullNum2(car.Power) & ", "
        sql = sql & "Truck_PowerType = " & String_chk.checkNullstr(car.PowerType) & ", Truck_Gears = " & String_chk.checkNullNum2(car.Gears) & ", Truck_Miles = " & String_chk.checkNullNum2(car.Miles) & ", Truck_MilesType = " & String_chk.checkNullstr(car.MilesType) & ", "
        sql = sql & "Truck_NumDoor = " & String_chk.checkNullNum2(car.NumDoor) & ", Truck_NumGear = " & String_chk.checkNullNum2(car.NumGear) & ", Truck_NumSeat = " & String_chk.checkNullNum2(car.NumSeat) & ", Truck_NumPump = " & String_chk.checkNullNum2(car.NumPump) & ", "
        sql = sql & "Truck_NumPrao = " & String_chk.checkNullNum2(car.NumPrao) & ", Truck_NumWeightLoad = " & String_chk.checkNullNum2(car.NumWeightLoad) & ", Truck_NumPraoDrive = " & String_chk.checkNullNum2(car.NumPraoDrive) & ", Truck_NumWeight = " & String_chk.checkNullNum2(car.NumWeight) & ", "
        sql = sql & "Truck_FuelConsume = " & String_chk.checkNullNum2(car.FuelConsume) & ", Truck_FuelTank = " & String_chk.checkNullNum2(car.FuelTank) & ", Truck_LastCheck = " & String_chk.checkNullstr(car.LastCheck) & ", Truck_Insurrance = " & String_chk.checkNullNum2(car.Insurrance) & ", "
        sql = sql & "Truck_Price = " & String_chk.checkNullNum2(car.Price) & ", Truck_Accident = " & car.Accident & ", Truck_Accessory = " & String_chk.checkNullstr(car.Accessory) & ", Truck_Information = " & String_chk.checkNullstr(car.Information) & ", "
        sql = sql & "Truck_Post=getdate(),Truck_Image1 = " & String_chk.checkNullstr(car.Image1) & ", Truck_Image2 = " & String_chk.checkNullstr(car.Image2) & ", Truck_Image3 = " & String_chk.checkNullstr(car.Image3) & ", "
        sql = sql & "Truck_Image4 = " & String_chk.checkNullstr(car.Image4) & ", Truck_Image5 = " & String_chk.checkNullstr(car.Image5) & " "
        sql = sql & "WHERE(Truck_Id = " & car.id & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        editTruckAccessory(car.id, car.Accessory1)

    End Sub
    Structure Truck
        Dim id As Integer
        Dim Brand As Integer
        Dim Model As String
        Dim Status As Integer
        Dim Year As String
        Dim Year_Ord As Integer
        Dim SubModel As String
        Dim Type As Integer
        Dim BodyId As String
        Dim EngineType As Integer
        Dim CC As Integer
        Dim Color As Integer
        Dim Metalic As Integer
        Dim Power As Integer
        Dim PowerType As String
        Dim Gears As Integer
        Dim Miles As Integer
        Dim MilesType As String
        Dim NumDoor As Integer
        Dim NumGear As Integer
        Dim NumSeat As Integer
        Dim NumPump As Integer
        Dim NumPrao As Integer
        Dim NumWeightLoad As Integer
        Dim NumPraoDrive As Integer
        Dim NumWeight As Integer
        Dim FuelConsume As Integer
        Dim FuelTank As Integer
        Dim LastCheck As String
        Dim Insurrance As Integer
        Dim Price As Double
        Dim Accident As Integer
        Dim Accessory As String
        Dim Accessory1 As Queue
        Dim Information As String
        Dim Post As Date
        Dim Image1 As String
        Dim Image2 As String
        Dim Image3 As String
        Dim Image4 As String
        Dim Image5 As String
        Dim remark As String
    End Structure
End Module
