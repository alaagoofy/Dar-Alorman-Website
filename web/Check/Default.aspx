<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Check_Default2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>تقرير المتبرعين</title>
     <style>
       

        tr, th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ccc;width:100px !important;font-size:13px
        }

        table {
            margin: 30px 0 0 0 !important;direction:rtl
        }
           #MainContent_CheckBoxList1 {}
        #MainContent_CheckBoxList1 input {display:inline-block;margin:25px 5px;cursor:pointer}

        #MainContent_CheckBoxList1 label {display:inline-block;border:1px solid #ccc;padding:10px;cursor:pointer;color:#222 !important;margin-left:20px}
        #MainContent_CheckBoxList1 label:hover {border:1px solid #ed8323;}
        #CalendarExtender1_container {background:#fefefe !important}
        #CalendarExtender2_container {background:#fefefe !important}
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div style="direction:rtl">
              <h4>اختر الفترة</h4>
             <asp:TextBox ID="txt_Start" placeholder="من"   name="start" CssClass="form-control" runat="server"></asp:TextBox>
        <ajaxToolkit:CalendarExtender Format="MM'/'dd'/'yyyy HH':'mm':'ss" ID="CalendarExtender1" TargetControlID="txt_Start" CssClass="test" runat="server" />

<asp:TextBox ID="txt_End" placeholder="الى"   name="start" CssClass="form-control" runat="server"></asp:TextBox>
       <ajaxToolkit:CalendarExtender ID="CalendarExtender2" Format="MM'/'dd'/'yyyy HH':'mm':'ss" TargetControlID="txt_End" CssClass="test" runat="server" />


              <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="بحث" />
            </div>
        <hr />
        <div style="direction:rtl" runat="server" id="edit">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


          
            <asp:Label ID="lbl_id" runat="server" style="display:none" Text=""></asp:Label>
        <asp:TextBox ID="txt_MangerNot" style="padding:10px 30px;border:1px solid #808080;display:inline-block;width:400px" TextMode="MultiLine" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" style="padding:5px 30px;background:#ffd800;color:#fff;border:none;cursor:pointer;display:inline-block" Text="حفظ" />
     
            </div>
             <asp:GridView ID="grid_Display" runat="server" AutoGenerateColumns="False"
                        DataKeyNames="ID" GridLines="Horizontal" OnRowEditing="grid_Display_RowEditing1" OnRowDataBound="grid_Display_RowDataBound"
                  OnPageIndexChanging="grid_Display_PageIndexChanging"
                        
                        AllowPaging="True" PageSize="200" BackColor="White" BorderColor="#336666"
                        BorderWidth="3px" CellPadding="4" Width="100%">
                        <Columns>
                            <%-- <asp:BoundField DataField="Title"  HeaderText="Title" />--%>
                            <asp:TemplateField HeaderText="الاسم">
                                <ItemTemplate>

                                    <%#Eval("Name") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="الهاتف">
                                <ItemTemplate>

                                    <%#Eval("Phone") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="البريد الالكترونى" ControlStyle-Width="100px">
                                <ItemTemplate>

                                    <%#Eval("Mail") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="المدينة">
                                <ItemTemplate>

                                    <%#Eval("City") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="العنوان">
                                <ItemTemplate>

                                    <%#Eval("Adres") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="المبلغ">
                                <ItemTemplate>

                                    <%#Eval("Donate") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="الغرض من التبرع">
                                <ItemTemplate>

                                    <%#Eval("DonateFor") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="الوقت المناسب للتحصيل">
                                <ItemTemplate>

                                    <%#Eval("DonateTime") %>
                                </ItemTemplate>
                            </asp:TemplateField>


                             <asp:TemplateField HeaderText="ملاحظات">
                                <ItemTemplate>

                                    <%#Eval("Notes") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="التاريخ">
                                <ItemTemplate>

                                    <%#Eval("DateNow") %>
                                </ItemTemplate>
                            </asp:TemplateField>


                                <asp:TemplateField HeaderText="ملاحظات الادارة">
                                <ItemTemplate>
                                 <p style="color:#f00;font-size:16px">  <asp:Literal ID="Literal1" runat="server" Text=' <%#Eval("MangerNot") %>'></asp:Literal>
                                   </p>
                                  
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                          <asp:CommandField ShowCancelButton="False" EditText="إضافة" ShowEditButton="True" />
                           
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






    </form>
</body>
</html>
