<%@ Page Title="وظائف" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Complain_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style>
        .form .btn input {
  display: inline-block;
  width: 208px;
  height: 50px;
  background: #F39200;
  -webkit-border-top-right-radius: 3px;
  -webkit-border-bottom-right-radius: 3px;
  -webkit-border-bottom-left-radius: 3px;
  -webkit-border-top-left-radius: 3px;
  -moz-border-radius-topright: 3px;
  -moz-border-radius-bottomright: 3px;
  -moz-border-radius-bottomleft: 3px;
  -moz-border-radius-topleft: 3px;
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
  -moz-background-clip: padding;
  -webkit-background-clip: padding-box;
  background-clip: padding-box;
  -webkit-box-shadow: 0 3px 0 0 #d88303;
  -moz-box-shadow: 0 3px 0 0 #d88303;
  box-shadow: 0 3px 0 0 #d88303;
  text-align: center;
  line-height: 50px;
  font-family:goofy;
  font-weight: 700;
  color: #fff;
  font-size: 15px;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
  text-transform: none;
}
section.you-help .col-4 .form #submit:hover {
  -webkit-box-shadow: 0 0px 0 0 #d88303;
  -moz-box-shadow: 0 0px 0 0 #d88303;
  box-shadow: 0 0px 0 0 #d88303;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>وظائف</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Complain">وظائف </a>
               
              
            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <div class="center cf">

        <!-- Gallery -->
        <section class="col-8 blog cf">

            <div class="gallery">

                <div class="menu cf">
                    <a class="active" href="#">وظائف</a>
                   
                </div>
       
      <div class="form">
       
        
                    <asp:DropDownList ID="DDLschl" style="width:95%;height:37px;font-family:goofy" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="Dep_Name" AppendDataBoundItems="true" DataValueField="Dep_id">
                        <asp:ListItem Text="اختر الفرع" Value="0"></asp:ListItem>
</asp:DropDownList>
                   
          <br /><br />
                    <asp:DropDownList  ID="DDLadv" style="width:95%;height:37px;font-family:goofy" runat="server" DataSourceID="SqlDataSource2" 
            DataTextField="OppTitle" DataValueField="OppID" AppendDataBoundItems="true">
             <asp:ListItem Value="0"  Text="الاعلان"></asp:ListItem>

        </asp:DropDownList>
<br /><br />
         <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="DDLschl"
        ErrorMessage="*" Operator="NotEqual" SetFocusOnError="True" Type="Integer" ValidationGroup="save2"
        ValueToCompare="0"></asp:CompareValidator>
        <br /><br />
        <%-- <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="DDLadv"
        ErrorMessage="<<<<-------" Operator="NotEqual" SetFocusOnError="True" Style="z-index: 108;
        right: 781px; position: absolute; top: 79px" Type="Integer" ValidationGroup="save2"
        ValueToCompare="0" Width="234px"></asp:CompareValidator>--%>
         
         
        
        <asp:Wizard ID="Wizard1" Width="100%" runat="server" ActiveStepIndex="0" SkipLinkText="" FinishPreviousButtonText="السابق" StepNextButtonText="التالي" StepPreviousButtonText="السابق" FinishCompleteButtonText="حفظ" StartNextButtonText="التالي" TabIndex="13">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server"  Title="1">
                    

                     <asp:DropDownList ID="DropDownList1" style="width:96%;height:37px;font-family:goofy" runat="server" DataSourceID="SqlDataSource7"
                        DataTextField="teaacknwayname" AppendDataBoundItems="true" DataValueField="teaacknwayid">
                        <asp:ListItem Value="0"  Text="طريقة التعارف"></asp:ListItem>
                    </asp:DropDownList>
   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList1"
                        ErrorMessage="*" Operator="NotEqual" SetFocusOnError="True"
                        Style="z-index: 130; right: 527px; position: absolute; top: 27px" Type="Integer"
                        ValidationGroup="save" ValueToCompare="0" Width="276px"></asp:CompareValidator>


               
                  <div class="clr"></div>
                    <asp:DropDownList ID="DropDownList2" style="width:96%;height:37px;font-family:goofy"  runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource6"
                        DataTextField="teaappsubjaname" DataValueField="teaappsubjid" >
                        <asp:ListItem Value="0"  Text="الوظيفة"></asp:ListItem>
                    </asp:DropDownList>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList2"
                        ErrorMessage="*" Operator="NotEqual" SetFocusOnError="True"
                        Style="z-index: 131; right: 525px; position: absolute; top: 57px" Type="Integer"
                        ValidationGroup="save" ValueToCompare="0" Width="276px"></asp:CompareValidator>
                       
                    <div class="clr"></div>

                    
                    <asp:TextBox ID="TBfirst" style="width:30%;margin:0 5px" placeholder="الاسم الاول"  runat="server"></asp:TextBox>

                  
                      <asp:TextBox ID="TBsecond" style="width:30%;margin:0 5px" placeholder="الاسم الاوسط" runat="server" TabIndex="1"></asp:TextBox>
            
                       <asp:TextBox ID="TBlast" style="width:30%;margin:0 5px" placeholder="الاسم الاخير" runat="server" TabIndex="2"></asp:TextBox>
                  <br /><br />
                    <div class="clr"></div>
                   
                     <asp:TextBox ID="TBcity" style="width:95%" placeholder="المدينة" runat="server" TabIndex="6"></asp:TextBox>
                  <br /><br />
                   <div class="clr"></div>
                        <asp:TextBox ID="TBaddress" style="width:95%" placeholder="العنوان" runat="server" TabIndex="5"></asp:TextBox>
                  <br /><br />
                    <div class="clr"></div>
                    <asp:TextBox ID="TBmobile" style="width:95%" placeholder="المحمول"  runat="server" TabIndex="8"></asp:TextBox>
                   <br /><br />
                      <div class="clr"></div>
                     <asp:TextBox ID="TBphone" style="width:95%" placeholder="الهاتف"  runat="server" TabIndex="7"></asp:TextBox>
                   <br /><br />
                
                   <div class="clr"></div>
                  
                  
                  
                  
                   
                   
                   
                   
                    <asp:TextBox ID="TBssn"  style="width:46%;margin:0 5px" placeholder="رقم البطاقة" runat="server" TabIndex="9"></asp:TextBox>
                    
                      
                    <asp:TextBox ID="TBssplace" style="width:46%;margin:0 5px" placeholder="صادر من"  runat="server" TabIndex="10"></asp:TextBox>
                           <br /><br />
                  
                  <div class="clr"></div>
            
  
                   
                    <asp:TextBox ID="TBbirthplace" style="width:46%;margin:0 5px"  placeholder="جهة الميلاد" runat="server" TabIndex="4"></asp:TextBox>

                      
                    <asp:TextBox ID="TBbirthdate" style="width:46%;margin:0 5px" placeholder="تاريخ الميلاد"  runat="server" TabIndex="3"></asp:TextBox>


                       <br /><br />
                 <div class="clr"></div>
             <br /><br />
                     <asp:DropDownList ID="DDLmilitary" style="width:96%;height:37px;font-family:goofy" runat="server" DataSourceID="SqlDataSource4"
                        DataTextField="MilstatusName"  AppendDataBoundItems="true" DataValueField="Milstatusid" TabIndex="12">
                        <asp:ListItem  Value="5" Text="الموقف من التجنيد"></asp:ListItem>
                    </asp:DropDownList>
                          <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DDLmilitary"
                        ErrorMessage="*" Operator="NotEqual" SetFocusOnError="True"
                        Style="z-index: 132; right: 699px; position: absolute; top: 398px" Type="Integer"
                        ValidationGroup="save" ValueToCompare="5" Width="117px"></asp:CompareValidator>
                           <br /><br />
                    <div class="clr"></div>
                    <asp:DropDownList ID="DDLmart" style="width:96%;height:37px;font-family:goofy"  runat="server" DataSourceID="SqlDataSource3" AppendDataBoundItems="true"
                        DataTextField="MarAName" DataValueField="MarID" TabIndex="11">
                        <asp:ListItem value="0"  Text="الحالة الاجتماعية"></asp:ListItem>
                    </asp:DropDownList>                    
                      <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="DDLmart"
                        ErrorMessage="*" Operator="NotEqual" SetFocusOnError="True" Style="z-index: 134;
                        right: 226px; position: absolute; top: 422px" Type="Integer" ValidationGroup="save"
                        ValueToCompare="0" Width="153px"></asp:CompareValidator>
                           <br /><br />
                    <div class="clr"></div>

                 
                
              
                  
                   
                    
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="2">



             
               

                    <asp:TextBox  ID="TBeducertif" placeholder="المؤهل" style="width:95%" runat="server" TabIndex="14"></asp:TextBox>

                        <br /><br />
                 <div class="clr"></div>
                     <br /><br />
                       <asp:DropDownList ID="DropDownList3"   style="width:96%;height:37px;font-family:goofy" runat="server" DataSourceID="SqlDataSource5"
                        DataTextField="years" AppendDataBoundItems="true" DataValueField="years">
                        <asp:ListItem value="0" Text="سنة التخرج"></asp:ListItem>
                    </asp:DropDownList>

                        <br /><br />
                 <div class="clr"></div>

                        <asp:DropDownList  ID="DropDownList4"  style="width:96%;height:37px;font-family:goofy" AppendDataBoundItems="true"  runat="server" DataSourceID="SqlDataSource8"
                        DataTextField="College" DataValueField="CollegeID">
                        <asp:ListItem  Value="0" Text="كلية"></asp:ListItem>
                    </asp:DropDownList>

                        <br /><br />
                 <div class="clr"></div>

                    <asp:TextBox ID="TBuni" placeholder="الجامعة" style="width:95%" runat="server" TabIndex="17"></asp:TextBox>


                       <br /><br />
                 <div class="clr"></div>
                  

                       <asp:TextBox  ID="TBscore" placeholder="التقدير" style="width:95%" runat="server" TabIndex="18"></asp:TextBox>

                        <br /><br />
                 <div class="clr"></div>

                          <asp:TextBox placeholder="الدورات التدريبية" style="width:95%"  ID="extracourses" runat="server" TabIndex="19"></asp:TextBox>

                        <br /><br />
                 <div class="clr"></div>



                    <p>
                        <h2>الاماكن التى عملت بها من قبل</h2>

                            
              
                          <asp:TextBox  ID="TBexp1" placeholder="........." style="width:35%;margin:0 5px" runat="server" TabIndex="20"></asp:TextBox>

                           <asp:TextBox placeholder="من" style="width:25%;margin:0 5px"  ID="TBto1" runat="server" TabIndex="22"></asp:TextBox>

                            <asp:TextBox placeholder="إلى" style="width:25%;margin:0 5px" ID="TBfrom1" runat="server" TabIndex="21"></asp:TextBox>
                            <br /><br />
            






                           <asp:TextBox placeholder="......... " style="width:35%;margin:0 5px"  ID="TBexp2" runat="server" TabIndex="23"></asp:TextBox>

                           <asp:TextBox ID="TBfrom2" style="width:25%;margin:0 5px" placeholder="من" runat="server" TabIndex="24"></asp:TextBox>

                          <asp:TextBox placeholder="إلى" style="width:25%;margin:0 5px"  ID="TBto2" runat="server" TabIndex="25"></asp:TextBox>

                            <br /><br />
              



                           <asp:TextBox placeholder="........." style="width:35%;margin:0 5px" ID="TBexp3" runat="server" TabIndex="26"></asp:TextBox>

                              <asp:TextBox placeholder="من" style="width:25%;margin:0 5px" ID="TBfrom3" runat="server" TabIndex="27"></asp:TextBox>

                           <asp:TextBox placeholder="إلى" style="width:25%;margin:0 5px"  ID="TBto3" runat="server" TabIndex="28"></asp:TextBox>


                            <br /><br />
             

                        
                    <asp:TextBox ID="TBexp4" placeholder="........." style="width:35%;margin:0 5px" runat="server" TabIndex="29"></asp:TextBox>

                    <asp:TextBox  placeholder="من" style="width:25%;margin:0 5px" ID="TBfrom4" runat="server" TabIndex="30"></asp:TextBox>

                    <asp:TextBox placeholder="إلى" style="width:25%;margin:0 5px"  ID="TBto4" runat="server" TabIndex="31"></asp:TextBox>


                            <br /><br />
                

                    </p>
                  



                        <br /><br />
                 <div class="clr"></div>


                 
                 






                    <asp:TextBox placeholder="المرتب المتوقع"  ID="TBexpectedsal" style="width:95%" runat="server" TabIndex="34"></asp:TextBox>
                        <br /><br />
                 <div class="clr"></div>

                    <asp:TextBox placeholder="اخر مرتب حصلت عليه"  ID="TBlastsal" style="width:95%" runat="server" TabIndex="33"></asp:TextBox>
                        <br /><br />
                 <div class="clr"></div>

                    <asp:TextBox placeholder="سبب ترك اخر عمل"  ID="TBReson" style="width:95%" runat="server" Height="22px" TabIndex="32"></asp:TextBox>

                        <br /><br />
                 <div class="clr"></div>
                  


              
                  

                    <asp:TextBox placeholder="موظف الادخال(لشئون العاملين فقط)" style="width:95%"  ID="empname" runat="server" TabIndex="35"></asp:TextBox>

                        <br /><br />
                 <div class="clr"></div>

                 

                

                    <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="DropDownList3"
                        ErrorMessage="*" Operator="NotEqual" SetFocusOnError="True"
                        Type="Integer"
                        ValidationGroup="save2" ValueToCompare="0"></asp:CompareValidator>

                    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="DropDownList4"
                        ErrorMessage="*" Operator="NotEqual" SetFocusOnError="True" Type="Integer" ValidationGroup="save2"
                        ValueToCompare="0"></asp:CompareValidator>
                   
                    
                </asp:WizardStep>
                
            </WizardSteps>
            <SideBarStyle HorizontalAlign="Right" VerticalAlign="Bottom"  />
            <StepNextButtonStyle Font-Bold="True" Font-Size="Large" />
            <StepPreviousButtonStyle Font-Bold="True" Font-Size="Large" />
            <FinishCompleteButtonStyle Font-Size="Large" />
            <FinishPreviousButtonStyle Font-Bold="True" Font-Size="Medium" />
            <StartNavigationTemplate>
                <div class="btn">
                <asp:Button ID="StartNextButton" runat="server" ValidationGroup="save" CausesValidation="true" CommandName="MoveNext" TabIndex="13"
                    Text="التالي" /></div>
            </StartNavigationTemplate>
            <FinishNavigationTemplate>
                 <div class="btn">
                <asp:Button ID="FinishPreviousButton" runat="server" 
                    CssClass="button" TabIndex="13" Text="السابق" />
                     <div class="clr"></div>
                <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" ValidationGroup="save2" CausesValidation="true" Font-Size="Large"
                    TabIndex="13" Text="حفظ" OnClick="FinishButton_Click"  CssClass="button" style="background:#086c0a" />
                     </div>
            </FinishNavigationTemplate>
        </asp:Wizard>
        
        &nbsp;
          <div class="clear"></div>
                
               </div>
                <p>
                    <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
             </p>
            </div>

           
        </section>

       <aside class="col-4 blog cf">

             <div id="aside-dynamic">
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active" data-attr="m1">شفاء  - الأورمان</div>
                 
                </div>
                 </div>
            <div class="recent-events">

                <img src="../css/images/shefaaBanner.jpg" alt="Alternate Text" />
                <br /><br />
                <img src="../css/images/ekfol.jpg" width="347" alt="Alternate Text" />

             <%--  <asp:Repeater ID="Repeater2" runat="server">
              <ItemTemplate>
                   <div class="item cf">
                    <div class="col-3">
                        <img id="Img1" src='<%#Eval("Thumb") %>' runat="server" alt=""/>
                    </div>
                    <div class="col-9">
                        <a id="A1" class="title fancybox" href='<%#Eval("Img") %>' runat="server" data-fancybox-group="gallery"><%#Eval("Title") %></a>
                        <div class="info">
                            <div class="calendar">بتاريخ : <%#Eval("DateNews") %></div>
                        </div>
                    </div>
                </div>
              </ItemTemplate>
          </asp:Repeater>--%>

            </div>



        </aside>

    </div>


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
           
        <!-- Aside Blog -->
       
</asp:Content>

