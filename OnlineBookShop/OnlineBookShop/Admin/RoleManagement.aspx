<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="OnlineBookShop.Admin.RoleManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h1 style="text-align:center">Role Management</h1>
    <div class="row">
        <div class="col-sm-12 table-responsive">
            <h2>Users List</h2>

            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnAddRoles" EventName="Click" />
                </Triggers>
                <ContentTemplate>
                    <asp:GridView ID="grdUsers" runat="server" DataKeyNames="Id" AutoGenerateColumns="false" SelectMethod="grdUsers_GetData" ItemType="OnlineBookShop.Models.ApplicationUser" CssClass="table table-bordered table-striped table-condensed" OnPreRender="grdUsers_PreRender">
                        <Columns>
                            <asp:BoundField HeaderText="User Name" DataField="UserName" />
                            <asp:BoundField HeaderText="Email" DataField="Email" />
                            <asp:TemplateField HeaderText="Roles">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#ListRoles(Item.Roles) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowSelectButton="true" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="col-sm-6">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="grdUsers" EventName="SelectedIndexChanged" />
                </Triggers>
                <ContentTemplate>
                    <asp:DetailsView ID="dvUsers" runat="server" DataKeyNames="Id" AutoGenerateRows="false" CssClass="table table-bordered table-striped table-condensed" SelectMethod="dvUsers_GetItem" UpdateMethod="dvUsers_UpdateItem" InsertMethod="dvUsers_InsertItem" DeleteMethod="dvUsers_DeleteItem">
                        <Fields>
                            <asp:BoundField HeaderText="Email" DataField="Email" />
                            <asp:CommandField ShowEditButton="true" ShowInsertButton="true" ShowDeleteButton="true" />
                        </Fields>
                    </asp:DetailsView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>




    <div class="row">
        <div class="col-sm-6">
            <h2>Roles List</h2>
            <asp:GridView ID="grdRoles" runat="server" DataKeyNames="Id" AutoGenerateColumns="false" SelectMethod="grdRoles_GetData" CssClass="table table-bordered table-striped table-condensed" OnPreRender="grdRoles_PreRender">
                <Columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="grdRoles" EventName="SelectedIndexChanged" />
                </Triggers>
                <ContentTemplate>
                    <asp:DetailsView ID="dvRoles" runat="server" DataKeyNames="Id" AutoGenerateRows="false" CssClass="table table-bordered table-striped table-condensed" SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" InsertMethod="dvRoles_InsertItem" DeleteMethod="dvRoles_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
                </ContentTemplate>
            </asp:UpdatePanel>           
        </div>


        <div class="col-sm-6">
            <h2>Add Roles to User</h2>
            <div class="form-group">
                <label class="control-lable">Select User : </label>
                <asp:DropDownList ID="ddlUsers" runat="server" SelectMethod="grdUsers_GetData" DataValueField="Id" DataTextField="UserName" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="control-lable">Add one or more roles : </label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" SelectMethod="grdRoles_GetData" DataValueField="Id" DataTextField="Name" CssClass="form-control"></asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" CssClass="btn btn-default" OnClick="btnAddRoles_Click" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
