<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="AddPublisherPage.aspx.cs" Inherits="OnlineBookShop.Admin.AddPublisherPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add a Publisher</p>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CssClass="auto-style1" DataKeyNames="PublisehrID" DataSourceID="SqlDataSource1" Height="138px" Width="747px">
        <EditItemTemplate>
            PublisehrID:
            <asp:Label ID="PublisehrIDLabel1" runat="server" Text='<%# Eval("PublisehrID") %>' />
            <br />
            PublisherName:
            <asp:TextBox ID="PublisherNameTextBox" runat="server" Text='<%# Bind("PublisherName") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            PublisherName:
            <asp:TextBox ID="PublisherNameTextBox" runat="server" Text='<%# Bind("PublisherName") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PublisehrID:
            <asp:Label ID="PublisehrIDLabel" runat="server" Text='<%# Eval("PublisehrID") %>' />
            <br />
            PublisherName:
            <asp:Label ID="PublisherNameLabel" runat="server" Text='<%# Bind("PublisherName") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Publishers] WHERE [PublisehrID] = @original_PublisehrID AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL))" InsertCommand="INSERT INTO [Publishers] ([PublisherName]) VALUES (@PublisherName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Publishers]" UpdateCommand="UPDATE [Publishers] SET [PublisherName] = @PublisherName WHERE [PublisehrID] = @original_PublisehrID AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PublisehrID" Type="Int32" />
            <asp:Parameter Name="original_PublisherName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PublisherName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="original_PublisehrID" Type="Int32" />
            <asp:Parameter Name="original_PublisherName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
