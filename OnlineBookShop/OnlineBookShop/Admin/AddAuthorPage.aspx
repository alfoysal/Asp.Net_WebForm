<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="AddAuthorPage.aspx.cs" Inherits="OnlineBookShop.Admin.AddAuthorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   Add Author
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Add A Author</h3>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="AuthorID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            AuthorID:
            <asp:Label ID="AuthorIDLabel1" runat="server" Text='<%# Eval("AuthorID") %>' />
            <br />
            AuthorName:
            <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            AuthorName:
            <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            AuthorID:
            <asp:Label ID="AuthorIDLabel" runat="server" Text='<%# Eval("AuthorID") %>' />
            <br />
            AuthorName:
            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Bind("AuthorName") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Author] WHERE [AuthorID] = @original_AuthorID AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL))" InsertCommand="INSERT INTO [Author] ([AuthorName]) VALUES (@AuthorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Author]" UpdateCommand="UPDATE [Author] SET [AuthorName] = @AuthorName WHERE [AuthorID] = @original_AuthorID AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_AuthorID" Type="Int32" />
            <asp:Parameter Name="original_AuthorName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AuthorName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="original_AuthorID" Type="Int32" />
            <asp:Parameter Name="original_AuthorName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
