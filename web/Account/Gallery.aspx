<%@ Page Title="تعديل معرض الصور" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Account_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
       <script type="text/javascript">
           var menuGroup = 'm4'
</script>
    <style>
        .menu a {color:#fff}
            .menu a:hover {color:#000}
        .form {direction:rtl}
        tr, th, td {padding:10px;text-align:center;border:1px solid #ccc}
        table {margin-top:30px}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>تعديل معرض الصور</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/News">تعديل معرض الصور </a>
               
              
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
                    <a class="active" href="#">أدخل اسم الجاليرى</a>
                   
                </div>

               
                <div class="form">



           <asp:TextBox ID="txt_Title" placeholder=" العنوان" style="width:98%" runat="server"></asp:TextBox>
                   <br /> <br /> 
                  
                    <strong>إختر صورة </strong>
                      <asp:FileUpload ID="upload_Thumb"  runat="server" />  
                    <asp:Image ID="image_thumb" Width="90px"  runat="server" />
                  
                    <div>
           <asp:Button ID="Button1" runat="server" OnClick="btn_save_Click" CssClass="submit" Text="إدخال" />
                      </div>
           <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
                     <asp:Label ID="lbl_id" runat="server" Text=""></asp:Label>
                    </div>
               <div class="clear"></div>


               <div style="direction:rtl">
                   <asp:GridView ID="grid_Display" runat="server" CssClass="static" AutoGenerateColumns="False"
                                DataKeyNames="ID" GridLines="Horizontal" OnPageIndexChanging="grid_Display_PageIndexChanging"
                                OnRowEditing="grid_Display_RowEditing" OnRowDataBound="grid_Display_RowDataBound"
                                OnRowDeleting="grid_Display_RowDeleting" 
                AllowPaging="True" PageSize="55" BackColor="White" BorderColor="#336666" 
                 BorderWidth="3px" CellPadding="4" Width="100%">
                                <Columns>
                                    <%-- <asp:BoundField DataField="Title"  HeaderText="Title" />--%>
                                    <asp:TemplateField HeaderText="العنوان">
                                        <ItemTemplate>
                                           
                                                <%#Eval("Title") %>
                                            
                                             
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="حذف">
                                        <ItemTemplate>
                                               <asp:LinkButton ID="btn_delete" runat="server" CommandArgument='<%#Eval("ID") %>'
                                                    CommandName="Delete"><img src="/css/images/DeleteRed.png" width="16" alt="Delete Red" /></asp:LinkButton>
                                            
                                            </ItemTemplate>
                                         </asp:TemplateField>
                                    <asp:CommandField ShowCancelButton="False" ShowEditButton="True" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
</div>


            </div>
           
        </section>

        <!-- Aside Blog -->
        <aside class="col-4 blog cf">

                <div id="aside-dynamic">
                 <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active">
                    <a href="Articles.aspx">     المقالات
                        </a>
                    </div>
                 
                </div>
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active">
                    <a href="News.aspx">     الأخبار
                        </a>
                    </div>
                 
                </div>

                  <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active">
                    <a href="OnlineNews.aspx">     أخبار أون لاين
                        </a>
                    </div>
                 
                </div>


                  <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active"><a href="Gallery.aspx"> ألبومات الصور</a></div>

                 
                </div>

                  <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active"><a href="GalleryImages.aspx">  الصور</a></div>

                 
                </div>
                 </div>
         


        </aside>

    </div>
</asp:Content>

