Public Class contact
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents info As System.Web.UI.WebControls.HyperLink
    Protected WithEvents market As System.Web.UI.WebControls.HyperLink
    Protected WithEvents webmaster As System.Web.UI.WebControls.HyperLink

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        info.NavigateUrl = "emailus.aspx?mail_to=info@auto-onclick.com"
        info.Target = "_blank"
        market.NavigateUrl = "emailus.aspx?mail_to=marketing@auto-onclick.com"
        market.Target = "_blank"
        webmaster.NavigateUrl = "emailus.aspx?mail_to=webmaster@auto-onclick.com"
        webmaster.Target = "_blank"
    End Sub

End Class