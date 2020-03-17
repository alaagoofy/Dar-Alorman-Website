<%@ Page Title="تعديل  الصور" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GalleryImages.aspx.cs" Inherits="Account_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
       <script type="text/javascript">
           var menuGroup = 'm4'
</script>
       <link rel="Stylesheet" type="text/css" href="/css/uploadify.css" />
     <script type="text/javascript" src="/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="/scripts/jquery.uploadify.js"></script>


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

            <h2>تعديل  الصور</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/News">تعديل  الصور </a>
               
              
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
                    <a class="active" href="#">أدخل الصور</a>
                   
                </div>

               
                <div class="form">
    <asp:DropDownList ID="DropDownList1" style="height:40px;width:100%" AutoPostBack="true" OnSelectedIndexChanged="Drop_Sub_SelectedIndexChanged" runat="server">

    </asp:DropDownList>
                    <br /> <br /> 

         <p>
                <asp:Image ID="image_thumb" Width="167px" runat="server" />
            </p>

             <div>
             <asp:Label ID="lbl_error" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label>
                    <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>
            </div>
               <p>
        <asp:FileUpload ID="FileUpload1" runat="server" />


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
                                           
                                              <asp:Image ID="image_thumb" ImageUrl='<%# "~/" + Eval("Img") %>' Width="80px" runat="server" />
                                                
                                            
                                             
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
    <asp:Button runat="server" ID="HiddenButton" Style="display: none;" onclick="HiddenButton_Click"  />
     <script type = "text/javascript">
         $(window).load(
  function () {
      $("#<%=FileUpload1.ClientID %>").fileUpload({
            'uploader': '/Scripts/uploader.swf',
            'cancelImg': '/css/images/cancel.png',
            'buttonText': 'Browse Files',
            'script': '/Upload.ashx',
            'folder': '/uploads',
            'fileDesc': 'Image Files',
            'fileExt': '*.jpg;*.jpeg;*.gif;*.png',
            'multi': true,
            'auto': true,
            'onAllComplete': function (event, data) {
                $("#<%= HiddenButton.ClientID %>").click();
                return true;
            }
        });
    }
);
</script> 
</asp:Content>

