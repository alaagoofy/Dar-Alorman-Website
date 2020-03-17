<%@ Page Title="صندوق الشكاوى" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Complain_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>صندوق الشكاوى</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Complain">صندوق الشكاوى </a>
               
              
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
                    <a class="active" href="#">صندوق الشكاوى</a>
                   
                </div>
              <div class="img-big">
            <img src="/css/images/complain.png" style="margin-bottom:20px" alt="Alternate Text" />

        </div>
      <div class="form">

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
           <asp:TextBox ID="txt_body" style="width:95%" runat="server" TextMode="MultiLine" placeholder="الإستفسار"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_body" 
                             CssClass="failureNotification" ErrorMessage="*" ToolTip="*" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
         
          <div class="clr"></div>
         <br />
          <div>
                       <asp:Button ID="Button1" runat="server" type="submit" onclick="LoginButton_Click1" ValidationGroup="a" CssClass="button" Text="إرسال" />
                   </div>
          <div class="clear"></div>
                
               </div>
                <p>
                    <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
             </p>
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
                        <a id="A1" class="title fancybox" href='<%#Eval("Img") %>' runat="server" data-fancybox-group="gallery"><%#Eval("Title") %></a>
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

