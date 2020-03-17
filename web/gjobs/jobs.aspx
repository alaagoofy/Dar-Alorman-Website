<%@ Page Language="VB" AutoEventWireup="false" CodeFile="jobs.aspx.vb" Inherits="jobs_jobs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl" lang="ae"  >
<head runat="server" dir="rtl" >
<meta http-equiv="Content-Type" content="text/html: charset=utf-8" />
    <title> جمعية الاورمان / التقديم للوظائف</title>
</head>
<body style="background-color:Silver"  dir="rtl">
    <form id="form1"  runat="server">
           <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" Height="24px"
            Style="z-index: 100; left: 542px; position: absolute; top: 88px" Text="طلب وظيفة"
            Width="112px"></asp:Label>
         <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 762px; position: absolute;
                        top: 110px" Text="الفرع" Width="88px" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <asp:DropDownList ID="DDLschl" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="Dep_Name" AppendDataBoundItems="true" DataValueField="Dep_id" Style="z-index: 102; left: 372px;
            position: absolute; top:110px" Width="392px" backcolor="#E0E0E0" forecolor="White"><asp:ListItem Text="Select..." Value="0"></asp:ListItem>
</asp:DropDownList>
                   
       <asp:Label ID="Label26" runat="server" Style="z-index: 105; left: 742px; position: absolute;
            top: 140px" Text="الاعلان" Width="108px"  Font-Bold="True"></asp:Label>
                    <asp:DropDownList  ID="DDLadv" runat="server" DataSourceID="SqlDataSource2" 
            DataTextField="OppTitle" DataValueField="OppID" BackColor="#E0E0E0" forecolor="White" Style="z-index: 10; left: 372px;
            position: absolute; top: 140px" Width="392px" AppendDataBoundItems="true">
             <asp:ListItem Value="0"  Text="Select..."></asp:ListItem>

        </asp:DropDownList>
         <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="DDLschl"
        ErrorMessage="<<<<-------" Operator="NotEqual" SetFocusOnError="True" Style="z-index: 106;
        right: 883px; position: absolute; top: 55px" Type="Integer" ValidationGroup="save2"
        ValueToCompare="0" Width="239px"></asp:CompareValidator>
        
        <%-- <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="DDLadv"
        ErrorMessage="<<<<-------" Operator="NotEqual" SetFocusOnError="True" Style="z-index: 108;
        right: 781px; position: absolute; top: 79px" Type="Integer" ValidationGroup="save2"
        ValueToCompare="0" Width="234px"></asp:CompareValidator>--%>
         
         <asp:Image ID="Image2" runat="server" ImageUrl="~/gjobs/header_01.gif" Style="z-index: 108;  
        left: 345px; position: absolute; top: 17px; width: 600px;" />
        
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="464px" Style="z-index: 104;
            left: 0px; position: absolute; top: 144px" Width="896px" SkipLinkText="" FinishPreviousButtonText="السابق" Font-Bold="True" Font-Size="Larger" StepNextButtonText="التالي" StepPreviousButtonText="السابق" FinishCompleteButtonText="حفظ" StartNextButtonText="التالي" TabIndex="13">
            <WizardSteps>
                <asp:WizardStep runat="server"  Title="1">
                    
                    <asp:TextBox ID="TBfirst"  backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 100; left: 708px;
                        position: absolute; top: 89px" Width="155px" ></asp:TextBox>
                    <asp:TextBox ID="TBcity"  backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 101; left: 708px;
                        position: absolute; top: 233px" Width="155px" TabIndex="6"></asp:TextBox>
                    <asp:TextBox ID="TBmobile"  backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 102; left: 412px;
                        position: absolute; top: 289px" Width="155px" TabIndex="8"></asp:TextBox>
                    <asp:TextBox ID="TBaddress" backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 103; left: 279px;
                        position: absolute; top: 177px" Width="584px" TabIndex="5"></asp:TextBox>
                    <asp:TextBox ID="TBphone" backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 104; left: 708px;
                        position: absolute; top: 289px" Width="155px" TabIndex="7"></asp:TextBox>
                    <asp:TextBox ID="TBsecond" backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 105; left: 412px;
                        position: absolute; top: 89px" Width="155px" TabIndex="1"></asp:TextBox>
                    <asp:TextBox ID="TBlast" backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 106; left: 140px;
                        position: absolute; top: 89px" Width="155px" TabIndex="2"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="Label7" runat="server" Style="z-index: 107; left: 308px; position: absolute;
                        top: 89px" Text="الاخير" Width="48px" Height="22px"></asp:Label>
                    <asp:Label ID="Label8" runat="server" Style="z-index: 108; left: 604px; position: absolute;
                        top: 89px" Text="الاوسط" Width="88px" Height="22px"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Style="z-index: 109; left: 604px; position: absolute;
                        top: 289px" Text="المحمول" Width="88px"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Style="z-index: 110; left: 884px; position: absolute;
                        top: 289px" Text="الهاتف" Width="88px" Height="19px"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Style="z-index: 111; left: 884px; position: absolute;
                        top: 233px" Text="المدينة" Width="88px" Height="19px"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Style="z-index: 112; left: 884px; position: absolute;
                        top: 177px" Text="العنوان" Width="88px" Height="19px"></asp:Label>
                    <asp:Label ID="Label14" runat="server" Style="z-index: 113; left: 884px; position: absolute;
                        top: 89px" Text="الاول" Width="88px" Height="22px"></asp:Label>
                  
                    <asp:TextBox ID="TBssn"  backcolor="#E0E0E0" runat="server" Height="22px" Style="z-index: 114; left: 708px;
                        position: absolute; top: 345px" Width="155px" TabIndex="9"></asp:TextBox>
                    <asp:TextBox ID="TBssplace" backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 115; left: 412px;
                        position: absolute; top: 345px" Width="155px" TabIndex="10"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Style="z-index: 116; left: 884px; position: absolute;
                        top: 345px" Text="رقم البطاقة" Width="88px" Height="19px"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Style="z-index: 117; left: 604px; position: absolute;
                        top: 345px" Text="صادر من" Width="88px"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Style="z-index: 118; left: 884px; position: absolute;
                        top: 393px" Text="الحالة الاجتماعيه" Width="88px"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Style="z-index: 119; left: 596px; position: absolute;
                        top: 393px" Text="الموقف من التجنيد" Width="96px"></asp:Label>
                    <asp:DropDownList ID="DDLmilitary" runat="server" DataSourceID="SqlDataSource4"
                        DataTextField="MilstatusName"  backcolor="#E0E0E0"  AppendDataBoundItems="true" DataValueField="Milstatusid" Style="z-index: 120;
                       left: 412px; position: absolute; top: 393px" Width="160px" TabIndex="12">
                        <asp:ListItem  Value="5" Text="Select..."></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DDLmart" backcolor="#E0E0E0"  runat="server" DataSourceID="SqlDataSource3" AppendDataBoundItems="true"
                        DataTextField="MarAName" DataValueField="MarID"  Style="z-index: 121; left: 708px;
                        position: absolute; top: 393px" Width="160px" TabIndex="11">
                        <asp:ListItem value="0"  Text="Select..."></asp:ListItem>
                    </asp:DropDownList>                    
                    <asp:TextBox ID="TBbirthplace" backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 122; left: 412px;
                        position: absolute; top: 137px" Width="155px" TabIndex="4"></asp:TextBox>
                    <asp:TextBox ID="TBbirthdate" backcolor="#E0E0E0"  runat="server" Height="22px" Style="z-index: 123; left: 708px;
                        position: absolute; top: 137px" Width="155px" TabIndex="3"></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" Style="z-index: 124; left: 884px; position: absolute;
                        top: 137px" Text="تاريخ الميلاد" Width="88px" Height="19px"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Style="z-index: 125; left: 604px; position: absolute;
                        top: 137px" Text="جهة الميلاد" Width="88px"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" backcolor="#E0E0E0"  runat="server" DataSourceID="SqlDataSource7"
                        DataTextField="teaacknwayname" AppendDataBoundItems="true" DataValueField="teaacknwayid" Style="z-index: 126;
                       left: 600px;; position: absolute; top: 23px" Width="264px">
                        <asp:ListItem Value="0"  Text="Select..."></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label29" runat="server" Height="25px" Style="z-index: 127; left: 884px;
                        position: absolute; top: 20px" Text="طريقة التعارف" Width="92px"></asp:Label>
                    <asp:Label ID="Label30" runat="server" Height="22px" Style="z-index: 128; left: 884px;
                        position: absolute; top: 58px" Text="الوظيفة" Width="88px"></asp:Label>
                  
                    <asp:DropDownList ID="DropDownList2" backcolor="#E0E0E0"  runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource6"
                        DataTextField="teaappsubjaname" DataValueField="teaappsubjid" Style="z-index: 129; left: 600px;
                        position: absolute; top: 55px" Width="265px">
                        <asp:ListItem Value="0"  Text="Select..."></asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList1"
                        ErrorMessage="&lt;&lt;&lt;&lt;-------" Operator="NotEqual" SetFocusOnError="True"
                        Style="z-index: 130; right: 527px; position: absolute; top: 27px" Type="Integer"
                        ValidationGroup="save" ValueToCompare="0" Width="276px"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList2"
                        ErrorMessage="&lt;&lt;&lt;&lt;-------" Operator="NotEqual" SetFocusOnError="True"
                        Style="z-index: 131; right: 525px; position: absolute; top: 57px" Type="Integer"
                        ValidationGroup="save" ValueToCompare="0" Width="276px"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DDLmilitary"
                        ErrorMessage="&lt;&lt;&lt;&lt;-------" Operator="NotEqual" SetFocusOnError="True"
                        Style="z-index: 132; right: 699px; position: absolute; top: 398px" Type="Integer"
                        ValidationGroup="save" ValueToCompare="5" Width="117px"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="DDLmart"
                        ErrorMessage="^^^^^^^^^" Operator="NotEqual" SetFocusOnError="True" Style="z-index: 134;
                        right: 226px; position: absolute; top: 422px" Type="Integer" ValidationGroup="save"
                        ValueToCompare="0" Width="153px"></asp:CompareValidator>
                   
                    
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="2">
                    <asp:Label ID="Label41" runat="server" Height="8px" Style="z-index: 100; left: 652px;
                        position: absolute; top: 280px" Text="من" Width="40px"></asp:Label>
                    <asp:Label ID="Label42" runat="server" Height="8px" Style="z-index: 101; left: 652px;
                        position: absolute; top: 240px" Text="من" Width="40px"></asp:Label>
                    <asp:Label ID="Label43" runat="server" Height="8px" Style="z-index: 102; left: 900px;
                        position: absolute; top: 30px" Text="المؤهل" Width="72px"></asp:Label>
                    <asp:Label ID="Label44" runat="server" Height="8px" Style="z-index: 103; left: 900px;
                        position: absolute; top: 65px" Text="كلية" Width="72px"></asp:Label>
                    <asp:Label ID="Labe45" runat="server" Height="19px" Style="z-index: 104; left: 772px;
                        position: absolute; top: 132px" Text="الاماكن التي عملت بها من قبل" Width="192px" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Labeم46" runat="server" Style="z-index: 105; left: 652px; position: absolute;
                        top: 152px" Text="من" Width="40px" Height="8px"></asp:Label>
                    <asp:Label ID="Label47" runat="server" Height="8px" Style="z-index: 106; left: 652px;
                        position: absolute; top: 200px" Text="من" Width="40px"></asp:Label>
                    <asp:Label ID="Label16" runat="server" Height="8px" Style="z-index: 107; left: 412px;
                        position: absolute; top: 280px" Text="الي" Width="40px"></asp:Label>
                    <asp:Label ID="Label17" runat="server" Height="8px" Style="z-index: 108; left: 412px;
                        position: absolute; top: 240px" Text="الي" Width="40px"></asp:Label>
                    <asp:Label ID="Label18" runat="server" Height="8px" Style="z-index: 109; left: 412px;
                        position: absolute; top: 200px" Text="الي" Width="40px"></asp:Label>
                    <asp:Label ID="Label19" runat="server" Height="8px" Style="z-index: 110; left: 412px;
                        position: absolute; top: 152px" Text="الي" Width="40px"></asp:Label>
                    <asp:Label ID="Label20" runat="server" Height="8px" Style="z-index: 111; left: 900px;
                        position: absolute; top: 105px" Text="التقدير" Width="72px"></asp:Label>
                    <asp:Label ID="Label21" runat="server" Height="8px" Style="z-index: 112; left: 588px;
                        position: absolute; top: 65px" Text="الجامعة" Width="72px"></asp:Label>
                    <asp:Label ID="Label22" runat="server" Height="8px" Style="z-index: 113; left: 588px;
                        position: absolute; top: 30px" Text="سنه التخرج" Width="72px"></asp:Label>
                    &nbsp;
                    <asp:TextBox  backcolor="#E0E0E0"  ID="TBeducertif" runat="server" Height="22px" Style="z-index: 114; left: 724px;
                        position: absolute; top: 30px" Width="155px" TabIndex="14"></asp:TextBox>
                    <asp:TextBox  backcolor="#E0E0E0" ID="TBuni" runat="server" Height="22px" Style="z-index: 115; left: 412px;
                        position: absolute; top: 65px" Width="155px" TabIndex="17"></asp:TextBox>
                    &nbsp;
                    <asp:TextBox  backcolor="#E0E0E0" ID="TBfrom3" runat="server" Height="22px" Style="z-index: 116; left: 484px;
                        position: absolute; top: 240px" Width="155px" TabIndex="27"></asp:TextBox>
                    <asp:TextBox  backcolor="#E0E0E0" ID="TBfrom2" runat="server" Height="22px" Style="z-index: 117; left: 484px;
                        position: absolute; top: 200px" Width="155px" TabIndex="24"></asp:TextBox>
                    <asp:TextBox  backcolor="#E0E0E0" ID="TBfrom1" runat="server" Height="22px" Style="z-index: 118; left: 484px;
                        position: absolute; top: 152px" Width="155px" TabIndex="21"></asp:TextBox>
                    <asp:TextBox  backcolor="#E0E0E0" ID="TBexp4" runat="server" Height="22px" Style="z-index: 119; left: 724px;
                        position: absolute; top: 280px" Width="240px" TabIndex="29"></asp:TextBox>
                    <asp:TextBox  backcolor="#E0E0E0" ID="TBexp3" runat="server" Height="22px" Style="z-index: 120; left: 724px;
                        position: absolute; top: 240px" Width="240px" TabIndex="26"></asp:TextBox>
                    <asp:TextBox  backcolor="#E0E0E0"  ID="TBexp2" runat="server" Height="22px" Style="z-index: 121; left: 724px;
                        position: absolute; top: 200px" Width="240px" TabIndex="23"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBexp1" runat="server" Height="22px" Style="z-index: 122; left: 724px;
                        position: absolute; top: 152px" Width="240px" TabIndex="20"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBscore" runat="server" Height="22px" Style="z-index: 123; left: 724px;
                        position: absolute; top: 100px" Width="155px" TabIndex="18"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBto1" runat="server" Height="22px" Style="z-index: 124; left: 244px;
                        position: absolute; top: 152px" Width="155px" TabIndex="22"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBto4" runat="server" Height="22px" Style="z-index: 125; left: 244px;
                        position: absolute; top: 280px" Width="155px" TabIndex="31"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBto3" runat="server" Height="22px" Style="z-index: 126; left: 244px;
                        position: absolute; top: 240px" Width="155px" TabIndex="28"></asp:TextBox>
                    <asp:TextBox  backcolor="#E0E0E0"  ID="TBto2" runat="server" Height="22px" Style="z-index: 127; left: 244px;
                        position: absolute; top: 200px" Width="155px" TabIndex="25"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBfrom4" runat="server" Height="22px" Style="z-index: 128; left: 484px;
                        position: absolute; top: 280px" Width="155px" TabIndex="30"></asp:TextBox>
                    <asp:Label ID="Label23" runat="server" Font-Bold="False" Font-Size="Large" Height="19px"
                        Style="z-index: 129; left: 836px; position: absolute; top: 328px" Text="سبب ترك اخر عمل"
                        Width="136px"></asp:Label>
                    <asp:Label ID="Label24" runat="server" Font-Bold="False" Font-Size="Large" Height="19px"
                        Style="z-index: 130; left: 482px; position: absolute; top: 376px" Text="المرتب المتوقع"
                        Width="112px"></asp:Label>
                    <asp:Label ID="Label25" runat="server" Font-Bold="False" Font-Size="Large" Height="19px"
                        Style="z-index: 131; left: 828px; position: absolute; top: 376px" Text="اخر مرتب حصلت عليه"
                        Width="144px"></asp:Label>
                    <asp:TextBox  backcolor="#E0E0E0"  ID="TBexpectedsal" runat="server" Height="22px" Style="z-index: 132; left: 306px;
                        position: absolute; top: 376px" Width="155px" TabIndex="34"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBlastsal" runat="server" Height="22px" Style="z-index: 133; left: 652px;
                        position: absolute; top: 376px" Width="155px" TabIndex="33"></asp:TextBox>
                    <asp:TextBox backcolor="#E0E0E0"  ID="TBReson" runat="server" Height="22px" Style="z-index: 134; left: 244px;
                        position: absolute; top: 328px" Width="560px" TabIndex="32"></asp:TextBox>
                    <asp:Label ID="Label27" runat="server" Height="8px" Style="z-index: 135; left: 588px;
                        position: absolute; top: 105px" Text="الدورات التدريبيه" Width="72px"></asp:Label>
                    <asp:TextBox backcolor="#E0E0E0"  ID="extracourses" runat="server" Height="22px" Style="z-index: 136; left: 245px;
                        position: absolute; top: 110px" Width="325px" TabIndex="19"></asp:TextBox>
                    <asp:Label ID="Label28" runat="server" Font-Bold="False" Font-Size="Large" Height="19px"
                        Style="z-index: 137; left: 473px; position: absolute; top: 415px" Text="موظف الادخال(لشئون العاملين فقط)"
                        Width="266px"></asp:Label>
                    <asp:TextBox backcolor="#E0E0E0"  ID="empname" runat="server" Height="22px" Style="z-index: 138; left: 306px;
                        position: absolute; top: 415px" Width="155px" TabIndex="35"></asp:TextBox>
                    <asp:DropDownList backcolor="#E0E0E0"  ID="DropDownList3" runat="server" DataSourceID="SqlDataSource5"
                        DataTextField="years" AppendDataBoundItems="true" DataValueField="years" Style="z-index: 139; right: 327px;
                        position: absolute; top: 30px" Width="157px">
                        <asp:ListItem value="0" Text="Select..."></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList backcolor="#E0E0E0"  ID="DropDownList4" AppendDataBoundItems="true"  runat="server" DataSourceID="SqlDataSource8"
                        DataTextField="College" DataValueField="CollegeID" Style="z-index: 140; right:13px;
                        position: absolute; top: 65px" Width="165px">
                        <asp:ListItem  Value="0" Text="Select..."></asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="DropDownList3"
                        ErrorMessage="&lt;&lt;&lt;&lt;-------" Operator="NotEqual" SetFocusOnError="True"
                        Style="z-index: 141; right: 698px; position: absolute; top: 11px" Type="Integer"
                        ValidationGroup="save2" ValueToCompare="0" Width="276px"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="DropDownList4"
                        ErrorMessage="&lt;&lt;&lt;&lt;" Operator="NotEqual" SetFocusOnError="True" Style="z-index: 143;
                        right: 385px; position: absolute; top: 54px" Type="Integer" ValidationGroup="save2"
                        ValueToCompare="0" Width="47px"></asp:CompareValidator>
                   
                    
                </asp:WizardStep>
                
            </WizardSteps>
            <SideBarStyle HorizontalAlign="Right" VerticalAlign="Bottom"  />
            <StepNextButtonStyle Font-Bold="True" Font-Size="Large" />
            <StepPreviousButtonStyle Font-Bold="True" Font-Size="Large" />
            <FinishCompleteButtonStyle Font-Size="Large" />
            <FinishPreviousButtonStyle Font-Bold="True" Font-Size="Medium" />
            <StartNavigationTemplate>
                <asp:Button ID="StartNextButton" runat="server" ValidationGroup="save" CausesValidation="true" CommandName="MoveNext" TabIndex="13"
                    Text="التالي" />
            </StartNavigationTemplate>
            <FinishNavigationTemplate>
                <asp:Button ID="FinishPreviousButton" runat="server" 
                    Font-Bold="True" Font-Size="Medium" TabIndex="13" Text="السابق" />
                <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" ValidationGroup="save2" CausesValidation="true" Font-Size="Large"
                    TabIndex="13" Text="حفظ" />
            </FinishNavigationTemplate>
        </asp:Wizard>
        
        &nbsp;
    </form>  
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
     ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
        SelectCommand="SELECT [OppID], [OppTitle] FROM [JobOpportunities]"></asp:SqlDataSource>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
     ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
                        SelectCommand="SELECT [Dep_ID], [Dep_Name] FROM [tblDepartment]"></asp:SqlDataSource>
   
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
        SelectCommand="SELECT [Milstatusid], [MilstatusName] FROM [militarystatus]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
    SelectCommand="SELECT [MarID], [MarAName] FROM [maritalStatus]"></asp:SqlDataSource>  
   
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
     SelectCommand="SELECT [years] FROM [TeaAppYear]"></asp:SqlDataSource> 
      <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
     SelectCommand="SELECT [teaacknwayid], [teaacknwayname] FROM [teaacknway]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
                        SelectCommand="SELECT [teaappsubjid], [teaappsubjaname] FROM [teaappsubj]"></asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource8"  runat="server" ConnectionString="<%$ ConnectionStrings:LocalSQLServer3 %>"
                        SelectCommand="SELECT [CollegeID], [College] FROM [JobAppCollege]"></asp:SqlDataSource>
           
   
</body>

</html>
