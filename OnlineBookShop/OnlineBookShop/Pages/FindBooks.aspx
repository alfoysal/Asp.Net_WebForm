<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindBooks.aspx.cs" Inherits="OnlineBookShop.Pages.FindBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="BookID" DataSourceID="SqlDataSource2" ForeColor="Black" Height="50px" Width="125px">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" SortExpression="AuthorID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" SortExpression="PublisherID" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="YearOfPublication" HeaderText="YearOfPublication" SortExpression="YearOfPublication" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [BookInfo] WHERE [BookID] = @original_BookID AND (([AuthorID] = @original_AuthorID) OR ([AuthorID] IS NULL AND @original_AuthorID IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([YearOfPublication] = @original_YearOfPublication) OR ([YearOfPublication] IS NULL AND @original_YearOfPublication IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [BookInfo] ([AuthorID], [CategoryID], [PublisherID], [BookName], [Description], [YearOfPublication], [Price]) VALUES (@AuthorID, @CategoryID, @PublisherID, @BookName, @Description, @YearOfPublication, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BookInfo]" UpdateCommand="UPDATE [BookInfo] SET [AuthorID] = @AuthorID, [CategoryID] = @CategoryID, [PublisherID] = @PublisherID, [BookName] = @BookName, [Description] = @Description, [YearOfPublication] = @YearOfPublication, [Price] = @Price WHERE [BookID] = @original_BookID AND (([AuthorID] = @original_AuthorID) OR ([AuthorID] IS NULL AND @original_AuthorID IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([YearOfPublication] = @original_YearOfPublication) OR ([YearOfPublication] IS NULL AND @original_YearOfPublication IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_BookID" Type="Int32" />
                <asp:Parameter Name="original_AuthorID" Type="Int32" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_PublisherID" Type="Int32" />
                <asp:Parameter Name="original_BookName" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_YearOfPublication" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AuthorID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="PublisherID" Type="Int32" />
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="YearOfPublication" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AuthorID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="PublisherID" Type="Int32" />
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="YearOfPublication" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="original_BookID" Type="Int32" />
                <asp:Parameter Name="original_AuthorID" Type="Int32" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_PublisherID" Type="Int32" />
                <asp:Parameter Name="original_BookName" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_YearOfPublication" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
</asp:Content>
