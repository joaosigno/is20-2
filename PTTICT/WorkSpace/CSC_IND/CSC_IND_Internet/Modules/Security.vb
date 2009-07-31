
Module Security

    Public Const RET_UNKNOWN_ERR = 0

    Public Const TaskCustomerFind = 1          '1 ˹�Ҩͤ��Ң������١���
    Public Const TaskOffice = 2               '2 ˹�Ҩ͢����ź���ѷ
    Public Const TaskFactory = 3               '3 ˹�Ҩ͢������ç�ҹ
    Public Const TaskProduction = 4             '4 ˹�Ҩ͢����š�ü�Ե
    Public Const TaskContract = 5             '5 ˹�Ҩ͢������ѭ�ҫ���-���
    Public Const TaskEmergencyCase = 6            '6 ˹�Ҩ͢����šóթء�Թ
    Public Const TaskContactData = 7            '7 ˹�Ҩ͢����š�õԴ���
    Public Const TaskSeminarData = 8             '8 ˹�Ҩ͢�����������/ͺ��
    Public Const TaskGroupPerson = 9             '9 ˹�Ҩ͢����źؤ�ż��Դ���
    Public Const TaskPersonData = 10             '10 ˹�Ҩ͢����źؤ�ż��Դ���
    Public Const TaskHeatData = 11             '11 ˹�Ҩ͢����š������¹�ŧ��Ҥ�����͹
    Public Const TaskVendorList = 12             '12 ˹�Ҩ͢����� Vendor List
    Public Const TaskBilling = 13            '13 ˹�Ҩ͢����� Billing Report
    Public Const TaskRptContact = 14             '14 ˹�Ҩ���§ҹ��ػ��õԴ���
    Public Const TaskRptGas = 15             '15 ˹�Ҩ���§ҹ��Ҥ�����͹��Фس�Ҿ��ҫ
    Public Const TaskLetter = 16             '16 ˹�Ҩ;����ʵ������ͧ������
    Public Const TaskEMail = 17             '17 ˹�ҨͨѴ����� E-Mail
    Public Const TaskRptIntranet = 18             '18 ˹�Ҩ���§ҹ������к� (Intranet)
    Public Const TaskRptInternet = 19             '19 ˹�Ҩ���§ҹ������к� (Internet)
    Public Const TaskEmergencyData = 20             '20 ˹�Ҩ͢������˵ء�ó�ء�Թ
    Public Const TaskAnnounceData = 21             '21 ˹�Ҩ͢������͡��������
    Public Const TaskRoleData = 22             '22 ˹�Ҩ͢����š����������к� (Intranet)
    Public Const TaskUserIntranet = 23             '23 ˹�Ҩ͢����ż�����к� (Intranet)
    Public Const TaskUserInternet = 24             '24 ˹�Ҩ͢����ż�����к� (Internet)
    Public Const TaskAudit = 25            '25 ˹�Ҩ͢����� Audit
    Public Const TaskException = 26        '26 ˹�Ҩ͢����� Exception

    'ActionType
    Public Const actNone = 0    ' default
    Public Const actRead = 1    ' ����, �٢�����
    Public Const actModify = 2   '��䢢�����
    Public Const actConfirm = 4   '�׹�ѹ������


    Public gUSER_NAME

    Public Const CharList = " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_"
    Public Const CharCount = 64
    Public Const MaxKeyLen = 10

    Function CheckRole(ByVal TASK_ID As Integer)
        If Not IsAuthorized(TASK_ID, actRead) Then
            HttpContext.Current.Response.Redirect("../noRight.aspx")
        End If
    End Function

    Function CanDo(ByVal TASK_ID As Integer, ByVal Action As Integer, Optional ByVal Permits As Object = Nothing)
        CanDo = IsAuthorized(TASK_ID, Action, Permits)
    End Function

    Function CannotDo(ByVal TASK_ID As Integer, ByVal Action As Integer, Optional ByVal Permits As Object = Nothing)
        CannotDo = True
        If IsAuthorized(TASK_ID, Action, Permits) Then
            CannotDo = False
        End If
    End Function

    Function IsAuthorized(ByVal TASK_ID As Integer, ByVal Action As Integer, Optional ByVal Permissions As Object = Nothing)
        Dim P, RIGHTS
        P = 0
        If Not Permissions = Nothing Then
            RIGHTS = Permissions
        Else
            RIGHTS = HttpContext.Current.Session("RIGHTS") & ""
        End If
        P = Asc(Mid(RIGHTS, TASK_ID, 1) & "@") - 64
        IsAuthorized = ((Action And P) <> 0)
    End Function

    'Function IsAuthorized(ByVal TASK_ID, ByVal Action, ByVal Permit)
    '    Dim P
    '    P = 0
    '    If Not Permit = Nothing Then
    '        P = Asc(Mid(Permit, TASK_ID, 1) & "@") - 64
    '    End If
    '    IsAuthorized = ((Action And P) <> 0)
    'End Function
    'Function CannotDo(ByVal TASK_ID, ByVal Action, ByVal Permit)
    '    CannotDo = True
    '    If IsAuthorized(TASK_ID, Action, Permit) Then
    '        CannotDo = False
    '    End If
    'End Function

    ''=================================================================
    'Function CanDo(ByVal TASK_ID, ByVal Action, ByVal Permit)
    '    CanDo = IsAuthorized(TASK_ID, Action, Permit)
    'End Function

    ''=================================================================
    ''function �ʴ���ҵ������� show �� link file ���� msgbox
    ''   㹡óշ�����Է���  ��㹡ó�������Է�����ʴ���ͤ�����͹
    'Function ShowCanDo(ByVal TASK_ID, ByVal Action, ByVal Show, ByVal Permit)
    '    If IsAuthorized(TASK_ID, Action, Permit) Then
    '        ShowCanDo = " '" & Show & "' "
    '    Else
    '        ShowCanDo = " 'VBScript:Alert(""  ������Է���ӧҹ���!  "")'"
    '    End If
    'End Function

    '=================================================================
    ' Function ����Ѻ ������� ���ʼ�ҹ ��͹�ѹ�֡ŧ�ҹ������
    Function Encrypted(ByVal Key1, ByVal Key2) As String
        Dim I
        Dim X
        Dim S
        Key1 = Trim(CStr(Key1))
        Key2 = Trim(CStr(Key2))
        X = 55
        For I = 1 To 10
            If I > 10 - Len(Key1) Then
                X = (X + I) Xor Asc(Mid(Key1, 10 - I + 1, 1))
            Else
                X = X Xor I
            End If
            If I <= Len(Key2) Then
                X = X Xor Asc(Mid(Key2, I, 1))
            Else
                X = X Xor (I * 3)
            End If
            X = X And 127
            If X = 124 Then
                X = 125
            ElseIf (X < 32) Then
                X = X + 32
            End If
            If X = 39 Then X = 40
            S = S & Chr(X)
        Next
        Encrypted = S
    End Function


    Public Function Key2Char(ByVal num) As String
        Key2Char = Mid(CharList, (num Mod CharCount) + 1, 1)
    End Function

    Public Function Key2Num(ByVal Key As String) As Integer
        Key2Num = InStr(CharList, Key) - 1
    End Function


    Public Function DecodeKey(ByVal SecretKey As String, ByVal EncodedKey As String) As String
        Dim X As Integer, X0 As Integer
        Dim S As String, t As String
        Dim num As Integer
        Dim Data As String
        Dim I As Integer
        Try
            If Len(EncodedKey) <> MaxKeyLen + 3 Then Exit Function
            Dim c As String = " "

            S = Right(c.PadRight(MaxKeyLen - 1, " ") + SecretKey + SecretKey + SecretKey + SecretKey, MaxKeyLen)
            X = Key2Num(Mid(EncodedKey, MaxKeyLen + 2, 1)) * CharCount + Key2Num(Mid(EncodedKey, MaxKeyLen + 1, 1))
            Data = ""
            For I = MaxKeyLen To 1 Step -1
                num = (CharCount + (Key2Num(Mid(EncodedKey, I, 1)) + 55 + Key2Num(Mid(S, I, 1)) - X) Mod CharCount) Mod CharCount
                t = Key2Char(num) + t
                X = X - 55 - Key2Num(Mid(S, I, 1)) + num
            Next I
            DecodeKey = Right(t, (CharCount * 100 + Key2Num(Right(EncodedKey, 1)) - X) Mod CharCount)
        Catch ex As Exception
            DecodeKey = ""
        End Try

    End Function


End Module
