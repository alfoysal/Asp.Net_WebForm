<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogInInformation.aspx.cs" Inherits="OnlineBookShop.Pages.LogInInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h4>Project Log In Information</h4>
    <label>User Name:</label><span>admin</span><br />
    <label>Email:</label><span>admin@gmail.com</span><br />
    <label>Password:</label><span>Admin@123</span><br />
   <p>
       Dashboard is kept for  Admin. But for users who are not Admin, Dashboard elements
are different as they have no rights to access on some pages.

A general user's access information is given below.



The following concepts have been used in this project.

1. CRUD
2. Validation
3. Update Panel
4. SiteMapPath
5. Server Control
6. Master Page
7. User Control
8. Content Page
9. Pagination
10. Bootstrap
11. Authentication/Authorization
12. LINQ/EntityFramework
12. Custom Email



   </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
