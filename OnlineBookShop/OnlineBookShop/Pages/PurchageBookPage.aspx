<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchageBookPage.aspx.cs" Inherits="OnlineBookShop.Pages.PurchageBookPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Purchage Book</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="PurchaseID" DataSourceID="SqlDataSource1" Height="292px" Width="1104px">
        <EditItemTemplate>
            PurchaseID:
            <asp:Label ID="PurchaseIDLabel1" runat="server" Text='<%# Eval("PurchaseID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ContactNo:
            <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
            <br />
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            Rate:
            <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ContactNo:
            <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
            <br />
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            Rate:
            <asp:TextBox ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PurchaseID:
            <asp:Label ID="PurchaseIDLabel" runat="server" Text='<%# Eval("PurchaseID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ContactNo:
            <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Bind("ContactNo") %>' />
            <br />
            BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Bind("BookID") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            Rate:
            <asp:Label ID="RateLabel" runat="server" Text='<%# Bind("Rate") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Purchase] WHERE [PurchaseID] = @original_PurchaseID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Rate] = @original_Rate) OR ([Rate] IS NULL AND @original_Rate IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))" InsertCommand="INSERT INTO [Purchase] ([Name], [ContactNo], [BookID], [Quantity], [Rate], [Date]) VALUES (@Name, @ContactNo, @BookID, @Quantity, @Rate, @Date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Purchase]" UpdateCommand="UPDATE [Purchase] SET [Name] = @Name, [ContactNo] = @ContactNo, [BookID] = @BookID, [Quantity] = @Quantity, [Rate] = @Rate, [Date] = @Date WHERE [PurchaseID] = @original_PurchaseID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Rate] = @original_Rate) OR ([Rate] IS NULL AND @original_Rate IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PurchaseID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ContactNo" Type="String" />
            <asp:Parameter Name="original_BookID" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Rate" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="original_Date" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="BookID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Rate" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="BookID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Rate" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="original_PurchaseID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ContactNo" Type="String" />
            <asp:Parameter Name="original_BookID" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Rate" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="original_Date" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
