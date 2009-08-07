﻿'------------------------------------------------------------------------------
' <autogenerated>
'     This code was generated by a tool.
'     Runtime Version: 1.1.4322.2032
'
'     Changes to this file may cause incorrect behavior and will be lost if 
'     the code is regenerated.
' </autogenerated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On

Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Xml.Serialization

'
'This source code was auto-generated by Microsoft.VSDesigner, Version 1.1.4322.2032.
'
Namespace PIS

    '<remarks/>
    <System.Diagnostics.DebuggerStepThroughAttribute(), _
     System.ComponentModel.DesignerCategoryAttribute("code"), _
     System.Web.Services.WebServiceBindingAttribute(Name:="PISServiceSoap", [Namespace]:="http://tempuri.org/PTT.PIS.Interface.Service/PIS")> _
    Public Class PISService
        Inherits System.Web.Services.Protocols.SoapHttpClientProtocol

        '<remarks/>
        Public Sub New()
            MyBase.New()
            Me.Url = System.Configuration.ConfigurationSettings.AppSettings("PISServiceURL") & ""
        End Sub

        '<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PTT.PIS.Interface.Service/PIS/GetEmployeeProfile", RequestNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", ResponseNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Public Function GetEmployeeProfile(ByVal EmployeeID As String) As System.Data.DataSet
            Dim results() As Object = Me.Invoke("GetEmployeeProfile", New Object() {EmployeeID})
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        Public Function BeginGetEmployeeProfile(ByVal EmployeeID As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("GetEmployeeProfile", New Object() {EmployeeID}, callback, asyncState)
        End Function

        '<remarks/>
        Public Function EndGetEmployeeProfile(ByVal asyncResult As System.IAsyncResult) As System.Data.DataSet
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PTT.PIS.Interface.Service/PIS/GetApprovers", RequestNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", ResponseNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Public Function GetApprovers(ByVal EmployeeID As String) As System.Data.DataSet
            Dim results() As Object = Me.Invoke("GetApprovers", New Object() {EmployeeID})
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        Public Function BeginGetApprovers(ByVal EmployeeID As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("GetApprovers", New Object() {EmployeeID}, callback, asyncState)
        End Function

        '<remarks/>
        Public Function EndGetApprovers(ByVal asyncResult As System.IAsyncResult) As System.Data.DataSet
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PTT.PIS.Interface.Service/PIS/GetRoles", RequestNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", ResponseNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Public Function GetRoles(ByVal EmployeeID As String) As String()
            Dim results() As Object = Me.Invoke("GetRoles", New Object() {EmployeeID})
            Return CType(results(0), String())
        End Function

        '<remarks/>
        Public Function BeginGetRoles(ByVal EmployeeID As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("GetRoles", New Object() {EmployeeID}, callback, asyncState)
        End Function

        '<remarks/>
        Public Function EndGetRoles(ByVal asyncResult As System.IAsyncResult) As String()
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0), String())
        End Function

        '<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PTT.PIS.Interface.Service/PIS/GetSalary", RequestNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", ResponseNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Public Function GetSalary(ByVal EmployeeID As String) As Decimal
            Dim results() As Object = Me.Invoke("GetSalary", New Object() {EmployeeID})
            Return CType(results(0), Decimal)
        End Function

        '<remarks/>
        Public Function BeginGetSalary(ByVal EmployeeID As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("GetSalary", New Object() {EmployeeID}, callback, asyncState)
        End Function

        '<remarks/>
        Public Function EndGetSalary(ByVal asyncResult As System.IAsyncResult) As Decimal
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0), Decimal)
        End Function

        '<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PTT.PIS.Interface.Service/PIS/SearchEmployee", RequestNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", ResponseNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Public Function SearchEmployee(ByVal EmployeeID As String, ByVal FName As String, ByVal LName As String, ByVal DepartmentCode As String, ByVal ManagementFlag As String, ByVal FromLevel As Integer, ByVal ToLevel As Integer) As System.Data.DataSet
            Dim results() As Object = Me.Invoke("SearchEmployee", New Object() {EmployeeID, FName, LName, DepartmentCode, ManagementFlag, FromLevel, ToLevel})
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        Public Function BeginSearchEmployee(ByVal EmployeeID As String, ByVal FName As String, ByVal LName As String, ByVal DepartmentCode As String, ByVal ManagementFlag As String, ByVal FromLevel As Integer, ByVal ToLevel As Integer, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("SearchEmployee", New Object() {EmployeeID, FName, LName, DepartmentCode, ManagementFlag, FromLevel, ToLevel}, callback, asyncState)
        End Function

        '<remarks/>
        Public Function EndSearchEmployee(ByVal asyncResult As System.IAsyncResult) As System.Data.DataSet
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PTT.PIS.Interface.Service/PIS/GetDepartmentList", RequestNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", ResponseNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Public Function GetDepartmentList(ByVal DepartmentCode As String) As System.Data.DataSet
            Dim results() As Object = Me.Invoke("GetDepartmentList", New Object() {DepartmentCode})
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        Public Function BeginGetDepartmentList(ByVal DepartmentCode As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("GetDepartmentList", New Object() {DepartmentCode}, callback, asyncState)
        End Function

        '<remarks/>
        Public Function EndGetDepartmentList(ByVal asyncResult As System.IAsyncResult) As System.Data.DataSet
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PTT.PIS.Interface.Service/PIS/GetPositionList", RequestNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", ResponseNamespace:="http://tempuri.org/PTT.PIS.Interface.Service/PIS", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Public Function GetPositionList(ByVal PositionCode As String) As System.Data.DataSet
            Dim results() As Object = Me.Invoke("GetPositionList", New Object() {PositionCode})
            Return CType(results(0), System.Data.DataSet)
        End Function

        '<remarks/>
        Public Function BeginGetPositionList(ByVal PositionCode As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("GetPositionList", New Object() {PositionCode}, callback, asyncState)
        End Function

        '<remarks/>
        Public Function EndGetPositionList(ByVal asyncResult As System.IAsyncResult) As System.Data.DataSet
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0), System.Data.DataSet)
        End Function
    End Class
End Namespace