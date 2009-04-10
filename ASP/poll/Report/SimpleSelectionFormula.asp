<%@ LANGUAGE="VBSCRIPT" %>

<%
Dim stockholder_id
stockholder_id = request.QueryString("stockholder_id")
'===============================================================================
' WORKING WITH THE REPORT DESIGNER COMPONENT AND ASP TO SET A SELECTION FORMULA
'===============================================================================
'
' CONCEPT                                                             
'                                                                     
'  ALWAYS REQUIRED STEPS (contained in AlwaysRequiredSteps.asp)
'   - create the application object                                
'   - create the report object                                     
'   - open the report
'
'  SETTING A REPORT SELECTION FORMULA
'   - set the value of the report's RecordSelectionFormula property
'
'  MORE ALWAYS REQUIRED STEPS (contained in MoreRequiredSteps.asp)
'   - retreive the records                                         
'   - create the page engine 
'
'  DISPLAY THE REPORT
'   - display the report using a smart viewer
'==================================================================
%>

<%
' This line creates a string variable called reportname that we will use to pass
' the Crystal Report filename (.rpt file) to the OpenReport method contained in 
' the AlwaysRequiredSteps.asp.

reportname = "stockholder_name11.rpt"

%>

<%
'==================================================================
' ALWAYS REQUIRED STEPS
'
' Include the file AlwaysRequiredSteps.asp which contains the code    
' for steps:
'   - create the application object
'   - create the report object
'   - open the report
'==================================================================
%>                                                                     
<!-- #include file="AlwaysRequiredSteps.asp" -->                       

<%
'==================================================================
' SETTING A REPORT'S RECORD SELECTION FORMULA
'==================================================================


session("oRpt").RecordSelectionFormula = CStr("{Stockholder.Stockholder_id} = " & stockholder_id)
'This line sets the RecordSelectionFormula for the report to a 
'new string value
%>

<%
'==================================================================
'
'  MORE ALWAYS REQUIRED STEPS
'
'  Include the file MoreRequiredSteps.asp which contains the code
'  for the steps:
'   - retreive the records                                         
'   - create the page engine                                       
'   - create the smart viewer and point it to rptserver.asp
'
'==================================================================

%>
<!-- #include file="MoreRequiredSteps.asp" -->

<%
' INSTANTIATE THE REPORT VIEWER
'
'When using the Crystal Reports in an ASP environment, we use
'the same page-on-demand Report Viewers used with the Crystal Web Component Server.
'There are six Report Viewers:
'
'1.  Report Viewer for ActiveX
'2.  Report Viewer for Java using Browser JVM
'3.  Report Viewer for Standard HTML with Frames
'4.  Report Viewer for Standard HTML
'5.  Report Viewer for Java Using Java Plugin
'6.  Report Viewer for Netscape Plug-in (ActiveX)
'
'The Report Viewer that you use will based on the browser's display capablities.
'For Example, you would not want to instantiate one of the Java viewers if the browser
'did not support Java applets.  For purposes on this demo, we have chosen to
'define a viewer.  You can through code determine the support capabilities of
'the requesting browser.  However that functionality is inherent in the Crystal
'Reports RDC and is beyond the scope of this demonstration application.
'
'We have chosen to leverage the server side include functionality of ASP
'for simplicity sake.  So you can use the SmartViewer*.asp files to instantiate
'the smart viewer that you wish to send to the browser.  Simply replace the line
'below with the Smart Viewer asp file you wish to use.
'
'The choices are SmartViewerActiveX.asp, SmartViewerJava.asp, JavaPluginViewer.asp,
'ActiveXPluginViewer.asp. SmartViewerHTMLFrame.asp, and SmartViewerHTMLPAge.asp.
'Note that to use this include you must have the appropriate .asp file in the 
'same virtual directory as the main ASP page.
'
'*NOTE* For SmartViewerHTMLFrame and SmartViewerHTMLPage, you must also have
'the files framepage.asp and toolbar.asp in your virtual directory.


'=============================================================================
'  DISPLAY THE REPORT
'   - display the report using a smart viewer
' 
' Include one of the Smart Viewers.
'  - Report Viewer for ActiveX			=   SmartViewerActiveX.asp
'  - Report Viewer for Java using Browser JVM	=   SmartViewerJAVA.asp
'  - Report Viewer for Standard HTML		=   SmartViewerHTMLPage.asp
'  - Report Viewer for Standard HTML w/ Frames	=   SmartViewerHTMLFrame.asp
'  - Report Viewer for Java Using Java Plugin	=   JavaPluginViewer.asp
'  - Report Viewer for Netscape Plug-in		=   ActiveXPluginViewer.asp
'=============================================================================

%>
<!-- #include file="SmartViewerActiveX.asp" -->                    

         

