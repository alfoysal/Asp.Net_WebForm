<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="AddBookCategory.aspx.cs" Inherits="OnlineBookShop.Admin.AddBookCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <h4>Add a Book Category</h4>
     </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            CategoryID:
            <asp:Label ID="CategoryIDLabel1" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CategoryName:
            <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Bind("CategoryName") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @original_CategoryID AND (([CategoryName] = @original_CategoryName) OR ([CategoryName] IS NULL AND @original_CategoryName IS NULL))" InsertCommand="INSERT INTO [Categories] ([CategoryName]) VALUES (@CategoryName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName WHERE [CategoryID] = @original_CategoryID AND (([CategoryName] = @original_CategoryName) OR ([CategoryName] IS NULL AND @original_CategoryName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
            <asp:Parameter Name="original_CategoryName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
            <asp:Parameter Name="original_CategoryName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
