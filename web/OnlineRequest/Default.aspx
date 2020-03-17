<%@ Page Title="إتبرع الان يصلك مندوبنا لحد باب البيت" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Complain_Default" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>إستمارة التبرع</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Volunteer">إستمارة التبرع </a>
               
              
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
                    <a class="active" href="#">إستمارة التبرع</a>
                   
                </div>
             <%-- <div class="img-big">
            <img src="/css/images/complain.png" style="margin-bottom:20px" alt="Alternate Text" />

        </div>--%>
      <div class="form">
           <p>
                    <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
             </p>
           <asp:TextBox ID="txt_name" style="width:95%" runat="server" placeholder="الإسم"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_name" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
          <br /><br />
          <div class="clr"></div>
           <asp:TextBox ID="txt_phone" style="width:95%" runat="server" placeholder="رقم الهاتف"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_phone" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
          <br /><br />
          <div class="clr"></div>
            <asp:TextBox ID="txt_mail" style="width:95%" runat="server" placeholder="بريدك الإلكترونى">

            </asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_mail" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
          <br /><br />
            <div class="clr"></div>
            <asp:TextBox ID="txt_City" style="width:95%" runat="server" placeholder="المدينة">

            </asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_City" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
          <br /><br />



           <div class="clr"></div>
            <asp:TextBox ID="txt_adress" style="width:95%" runat="server" placeholder="العنوان">

            </asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_adress" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
          <br /><br />
        

            <div class="clr"></div>
            <asp:TextBox ID="txt_Donate" style="width:95%" runat="server" placeholder="المبلغ المراد التبرع به ">

            </asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_Donate" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
          <br /><br />


 <div class="clr"></div>

                <asp:DropDownList ID="DonateFor" style="width: 95%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;" runat="server">
            <asp:ListItem>إختر الغرض من التبرع</asp:ListItem>
        <asp:ListItem value="shefaa">مستشفى شفاء الأورمان</asp:ListItem>
		<asp:ListItem value="heart">عمليات القلب</asp:ListItem>
		<asp:ListItem value="orphan">كفالة اليتيم</asp:ListItem>
        <asp:ListItem value="sac">الاضحية</asp:ListItem>
        <asp:ListItem value="shanta">شنطة رمضان</asp:ListItem>
        <asp:ListItem value="zm">زكاة مال</asp:ListItem>
        <asp:ListItem value="z">زكاة</asp:ListItem>
        <asp:ListItem value="s">صدقة</asp:ListItem>
        <asp:ListItem value="sg">صدقة جارية</asp:ListItem>
                </asp:DropDownList>
         
        
                 
           


          <br /><br />
          
            <div class="clr"></div>


                <asp:DropDownList ID="DonateTime" style="width: 95%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"  runat="server">
                    <asp:ListItem>ميعاد التحصيل</asp:ListItem>
                    <asp:ListItem>السبت</asp:ListItem>
                    <asp:ListItem>الأحد</asp:ListItem>
                    <asp:ListItem>الإثنين</asp:ListItem>
                    <asp:ListItem>الثلاثاء</asp:ListItem>
                    <asp:ListItem>الأربعاء</asp:ListItem>
                    <asp:ListItem>الخميس</asp:ListItem>
                    <asp:ListItem>الجمعة</asp:ListItem>
                   
                </asp:DropDownList>
          <br /><br />


          <div class="clr"></div>
           <asp:TextBox ID="txt_body" style="width:95%" runat="server" TextMode="MultiLine" placeholder="هل لديك أى ملاحظات "></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_body" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
         
          <div class="clr"></div>
         <br />
             <p>
                                 أدخل الرموز كما ترى
                                    <cc1:WebFormsCaptcha ID="ExampleCaptcha" AutoClearInput="true" runat="server"></cc1:WebFormsCaptcha>
                                     <asp:TextBox ID="CaptchaCodeTextBox" placeholder="" CssClass="form-control" style="width: 25%; height: 40px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;font-family:Arial"  runat="server"></asp:TextBox>
                                    <asp:Label ID="lbl_capcha" runat="server" Text=""></asp:Label>
                                </p>
          <div class="clr"></div>
         <br />
          <div>
                       <asp:Button ID="Button1" runat="server" type="submit" onclick="LoginButton_Click1" ValidationGroup="a" CssClass="button" Text="إرسال" />
                   </div>
          <div class="clear"></div>
                
               </div>
               
            </div>

           
        </section>

        <!-- Aside Blog -->
        <aside class="col-4 blog cf">

             <div id="aside-dynamic">
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active" data-attr="m1">اخر الأخبار</div>
                 
                </div>
                 </div>
            <div class="recent-events">

               

                <asp:Repeater ID="Repeater2" runat="server">
              <ItemTemplate>
                   <div class="item cf">
                    <div class="col-3">
                        <img id="Img1" src='<%#Eval("Thumb") %>' runat="server" alt=""/>
                    </div>
                    <div class="col-9">
                        <a id="A1" href='<%#Eval("Url") %>' runat="server" target="_blank"><%#Eval("Title") %></a>
                        <div class="info">
                            <div class="calendar">بتاريخ : <%#Eval("DateNews") %></div>
                        </div>
                    </div>
                </div>
              </ItemTemplate>
          </asp:Repeater>

            </div>



        </aside>

    </div>
</asp:Content>

