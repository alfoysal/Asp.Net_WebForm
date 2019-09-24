<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookSalesPage.aspx.cs" Inherits="OnlineBookShop.Pages.BookSalesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div>Sales Book</div> 
    <div>

        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="SalesID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                SalesID:
                <asp:Label ID="SalesIDLabel1" runat="server" Text='<%# Eval("SalesID") %>' />
                <br />
                Customar Name:
                <asp:TextBox ID="Customar_NameTextBox" runat="server" Text='<%# Bind("[Customar Name]") %>' />
                <br />
                ContactNo:
                <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
                <br />
                BookID:
                <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                discount:
                <asp:TextBox ID="discountTextBox" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                GrossAmmount:
                <asp:TextBox ID="GrossAmmountTextBox" runat="server" Text='<%# Bind("GrossAmmount") %>' />
                <br />
                DicountAmmount:
                <asp:TextBox ID="DicountAmmountTextBox" runat="server" Text='<%# Bind("DicountAmmount") %>' />
                <br />
                NetPay:
                <asp:TextBox ID="NetPayTextBox" runat="server" Text='<%# Bind("NetPay") %>' />
                <br />
                SalesDate:
                <asp:TextBox ID="SalesDateTextBox" runat="server" Text='<%# Bind("SalesDate") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Customar Name:
                <asp:TextBox ID="Customar_NameTextBox" runat="server" Text='<%# Bind("[Customar Name]") %>' />
                <br />
                ContactNo:
                <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
                <br />
                BookID:
                <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                discount:
                <asp:TextBox ID="discountTextBox" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                GrossAmmount:
                <asp:TextBox ID="GrossAmmountTextBox" runat="server" Text='<%# Bind("GrossAmmount") %>' />
                <br />
                DicountAmmount:
                <asp:TextBox ID="DicountAmmountTextBox" runat="server" Text='<%# Bind("DicountAmmount") %>' />
                <br />
                NetPay:
                <asp:TextBox ID="NetPayTextBox" runat="server" Text='<%# Bind("NetPay") %>' />
                <br />
                SalesDate:
                <asp:TextBox ID="SalesDateTextBox" runat="server" Text='<%# Bind("SalesDate") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" OnClick="InsertButton_Click" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                SalesID:
                <asp:Label ID="SalesIDLabel" runat="server" Text='<%# Eval("SalesID") %>' />
                <br />
                Customar Name:
                <asp:Label ID="Customar_NameLabel" runat="server" Text='<%# Bind("[Customar Name]") %>' />
                <br />
                ContactNo:
                <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Bind("ContactNo") %>' />
                <br />
                BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Bind("BookID") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                discount:
                <asp:Label ID="discountLabel" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                GrossAmmount:
                <asp:Label ID="GrossAmmountLabel" runat="server" Text='<%# Bind("GrossAmmount") %>' />
                <br />
                DicountAmmount:
                <asp:Label ID="DicountAmmountLabel" runat="server" Text='<%# Bind("DicountAmmount") %>' />
                <br />
                NetPay:
                <asp:Label ID="NetPayLabel" runat="server" Text='<%# Bind("NetPay") %>' />
                <br />
                SalesDate:
                <asp:Label ID="SalesDateLabel" runat="server" Text='<%# Bind("SalesDate") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Sales] WHERE [SalesID] = @original_SalesID AND (([Customar Name] = @original_Customar_Name) OR ([Customar Name] IS NULL AND @original_Customar_Name IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL)) AND (([GrossAmmount] = @original_GrossAmmount) OR ([GrossAmmount] IS NULL AND @original_GrossAmmount IS NULL)) AND (([DicountAmmount] = @original_DicountAmmount) OR ([DicountAmmount] IS NULL AND @original_DicountAmmount IS NULL)) AND (([NetPay] = @original_NetPay) OR ([NetPay] IS NULL AND @original_NetPay IS NULL)) AND (([SalesDate] = @original_SalesDate) OR ([SalesDate] IS NULL AND @original_SalesDate IS NULL))" InsertCommand="INSERT INTO [Sales] ([Customar Name], [ContactNo], [BookID], [price], [Quantity], [discount], [GrossAmmount], [DicountAmmount], [NetPay], [SalesDate]) VALUES (@Customar_Name, @ContactNo, @BookID, @price, @Quantity, @discount, @GrossAmmount, @DicountAmmount, @NetPay, @SalesDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Sales]" UpdateCommand="UPDATE [Sales] SET [Customar Name] = @Customar_Name, [ContactNo] = @ContactNo, [BookID] = @BookID, [price] = @price, [Quantity] = @Quantity, [discount] = @discount, [GrossAmmount] = @GrossAmmount, [DicountAmmount] = @DicountAmmount, [NetPay] = @NetPay, [SalesDate] = @SalesDate WHERE [SalesID] = @original_SalesID AND (([Customar Name] = @original_Customar_Name) OR ([Customar Name] IS NULL AND @original_Customar_Name IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL)) AND (([GrossAmmount] = @original_GrossAmmount) OR ([GrossAmmount] IS NULL AND @original_GrossAmmount IS NULL)) AND (([DicountAmmount] = @original_DicountAmmount) OR ([DicountAmmount] IS NULL AND @original_DicountAmmount IS NULL)) AND (([NetPay] = @original_NetPay) OR ([NetPay] IS NULL AND @original_NetPay IS NULL)) AND (([SalesDate] = @original_SalesDate) OR ([SalesDate] IS NULL AND @original_SalesDate IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SalesID" Type="Int32" />
                <asp:Parameter Name="original_Customar_Name" Type="String" />
                <asp:Parameter Name="original_ContactNo" Type="String" />
                <asp:Parameter Name="original_BookID" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_discount" Type="Decimal" />
                <asp:Parameter Name="original_GrossAmmount" Type="Decimal" />
                <asp:Parameter Name="original_DicountAmmount" Type="Decimal" />
                <asp:Parameter Name="original_NetPay" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_SalesDate" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Customar_Name" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="BookID" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="discount" Type="Decimal" />
                <asp:Parameter Name="GrossAmmount" Type="Decimal" />
                <asp:Parameter Name="DicountAmmount" Type="Decimal" />
                <asp:Parameter Name="NetPay" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="SalesDate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Customar_Name" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="BookID" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="discount" Type="Decimal" />
                <asp:Parameter Name="GrossAmmount" Type="Decimal" />
                <asp:Parameter Name="DicountAmmount" Type="Decimal" />
                <asp:Parameter Name="NetPay" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="SalesDate" />
                <asp:Parameter Name="original_SalesID" Type="Int32" />
                <asp:Parameter Name="original_Customar_Name" Type="String" />
                <asp:Parameter Name="original_ContactNo" Type="String" />
                <asp:Parameter Name="original_BookID" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_discount" Type="Decimal" />
                <asp:Parameter Name="original_GrossAmmount" Type="Decimal" />
                <asp:Parameter Name="original_DicountAmmount" Type="Decimal" />
                <asp:Parameter Name="original_NetPay" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_SalesDate" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

