<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BestSellarBooks.aspx.cs" Inherits="OnlineBookShop.Pages.BestSellarBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 129px;
        }
        .auto-style2 {
            width: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <table style="width:100%;">
            <tr>
                <td class="auto-style1"><img src="../Images/DiscreteMathematics.jpg" /></td>
                <td class="auto-style2"><img src="../Images/Computer%20Graphics%20and%20Geometric%20Modeling.%20Mathematics.jpg" /></td>
                <td><img src="../Images/Basic%20Linear%20Algebra.jpg" /></td>
                <td><img src="../Images/An%20introduction%20to%20homological%20algebra.jpg" /></td>
                <td><img src="../Images/Computational%20Discrete%20Mathematics.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style1"><img src="../Images/Chemistry%20of%20the%20elements.jpg" /></td>
                <td class="auto-style2"><img src="../Images/Lange's%20Handbook%20of%20Chemistry.jpg" /></td>
                <td><img src="../Images/Textbook%20on%20practical%20organic%20chemistry.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
