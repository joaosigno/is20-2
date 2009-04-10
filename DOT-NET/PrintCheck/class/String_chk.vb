Module String_chk
    Function checkNullstr(ByVal x As String) As String
        If x = "" Or x = "null" Then
            Return "null"
        Else
            Return "'" & x & "'"
        End If
    End Function
    Function checkNullstr_2(ByVal x As String) As String
        If x = "" Or x = "null" Then
            Return "'-'"
        Else
            Return "'" & x & "'"
        End If
    End Function
    Function checkNullNum(ByVal x As String) As String
        If x = "" Or x = "null" Then
            Return "null"
        Else
            Return x
        End If
    End Function
    Function checkNullStr_Line(ByVal x As String) As String
        If x = "" Or x = "null" Or x = "0" Then
            Return "-"
        Else
            Return x
        End If
    End Function
    Function changeLine2Zero(ByVal x As String) As String
        If x = "-" Then
            Return "00/0"
        Else
            Return x
        End If
    End Function
    '------------for edit data-------------------------------
    Function checknullStrInt(ByVal x As String) As Integer
        If x = "" Or x = "null" Then
            Return 0
        Else
            Return x
        End If
    End Function
    Function checkInt(ByVal x As Integer) As String
        If x = "-1" Then
            Return "null"
        Else
            Return x
        End If
    End Function

    Function checkNullNum2(ByVal x As Integer) As String
        If x = 0 Then
            Return "null"
        Else
            Return x
        End If
    End Function
    Function checkTrue(ByVal x As Boolean) As Integer
        If x Then
            Return 1
        Else
            Return 0
        End If
    End Function

    Function checkNullDBstr(ByVal x As Object) As String
        Dim y As String
        If IsDBNull(x) Then
            Return ""
        Else
            Return x
        End If
    End Function
    Function checkNullDBNum(ByVal x As Object) As Integer
        Dim y As String
        If IsDBNull(x) Then
            Return 0
        ElseIf x = -1 Then
            Return 1
        Else
            Return x
        End If
    End Function
    Function checkNullDBPrice(ByVal x As Object) As Double
        Dim y As String
        If IsDBNull(x) Then
            Return 0
        ElseIf x = -1 Then
            Return 1
        Else
            Return x
        End If
    End Function
    Function checkNullTrue(ByVal x As Object) As Boolean
        Dim y As String
        If IsDBNull(x) Then
            Return False
        Else
            Return True
        End If
    End Function

    Function checkNullDBbit(ByVal x As Object) As Integer
        Dim y As String
        If IsDBNull(x) Then
            Return 999
        Else
            Return x
        End If
    End Function
    Function checkNullDBDate(ByVal x As Object) As Date
        Dim y As String
        If IsDBNull(x) Then
            Return Nothing
        Else
            Return x
        End If
    End Function
    '---------------for validate form-------------------------
    Function cleanRequire(ByVal x As String) As String
        If x = "�ô�к�" Then
            x = ""
        End If
        Return x
    End Function
    Function cleanTextBox(ByVal inputSTR As String, ByVal compSTR As String) As String
        Dim x As String
        If inputSTR = compSTR Then
            x = ""
        Else
            x = inputSTR
        End If
        Return x
    End Function


    '---------------clean SQL injection-------------------------
    Function cleanSQ(ByVal tmpX As String) As String

        tmpX = Replace(tmpX, "'", "''")

        Return tmpX
    End Function

    '---------------Convert Baht-------------------------
    Function cnvNum2Baht(ByVal amount As Double) As String
        Dim ans As String
        Dim lNum As Integer
        Dim rNum As Double
        Dim i As Integer = 0
        Dim tmpNum As Double


        lNum = Math.Floor(amount)
        rNum = Math.Round((amount - Math.Floor(amount)) * 100)
        '---------- Left path ------------------
        For i = 7 To 0 Step -1
            tmpNum = lNum / (1 * Math.Pow(10, i))
            If Math.Floor(tmpNum) <> 0 Then
                If i = 1 And Math.Floor(tmpNum) = 1 Then
                    ans = ans & DigitTxt(0) & NumTxt(i + 1)
                ElseIf i = 1 And Math.Floor(tmpNum) = 2 Then
                    ans = ans & DigitTxt(11) & NumTxt(i + 1)
                ElseIf i = 0 And Math.Floor(tmpNum) = 1 Then
                    ans = ans & DigitTxt(10) & NumTxt(i + 1)
                Else
                    ans = ans & DigitTxt(Math.Floor(tmpNum)) & NumTxt(i + 1)
                End If

                lNum = lNum - (Math.Floor(tmpNum) * (1 * Math.Pow(10, i)))
            End If
            If i = 0 Then
                ans = ans & "�ҷ"
            End If
            tmpNum = 0
        Next
        If rNum > 0 Then
            For i = 1 To 0 Step -1
                tmpNum = rNum / (1 * Math.Pow(10, i))
                If Math.Floor(tmpNum) <> 0 Then
                    If i = 1 And Math.Floor(tmpNum) = 1 Then
                        ans = ans & DigitTxt(0) & NumTxt(i + 1)
                    ElseIf i = 1 And Math.Floor(tmpNum) = 2 Then
                        ans = ans & DigitTxt(11) & NumTxt(i + 1)
                    ElseIf i = 0 And Math.Floor(tmpNum) = 1 Then
                        ans = ans & DigitTxt(10) & NumTxt(i + 1)
                    Else
                        ans = ans & DigitTxt(Math.Floor(tmpNum)) & NumTxt(i + 1)
                    End If
                    rNum = rNum - (Math.Floor(tmpNum) * (1 * Math.Pow(10, i)))
                End If
                If i = 0 Then
                    ans = ans & "ʵҧ��"
                End If
                tmpNum = 0
            Next
        End If

        i = InStr(ans, "ʵҧ��", CompareMethod.Text)
        If i = 0 Then
            ans = ans & "��ǹ"
        End If

        Return ans
    End Function

    Function DigitTxt(ByVal digit As Integer) As String
        Dim ans As String

        Select Case digit
            Case 0
                ans = ""
            Case 1
                ans = "˹��"
            Case 2
                ans = "�ͧ"
            Case 3
                ans = "���"
            Case 4
                ans = "���"
            Case 5
                ans = "���"
            Case 6
                ans = "ˡ"
            Case 7
                ans = "��"
            Case 8
                ans = "Ỵ"
            Case 9
                ans = "���"
            Case 10
                ans = "���"
            Case 11
                ans = "���"
        End Select

        Return ans
    End Function
    Function NumTxt(ByVal digit As Integer) As String
        Dim ans As String

        Select Case digit
            Case 1
                ans = ""
            Case 2
                ans = "�Ժ"
            Case 3
                ans = "����"
            Case 4
                ans = "�ѹ"
            Case 5
                ans = "����"
            Case 6
                ans = "�ʹ"
            Case 7
                ans = "��ҹ"

        End Select

        Return ans
    End Function

End Module
