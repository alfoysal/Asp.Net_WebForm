using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

namespace OnlineBookShop.UserControl
{
    public partial class AddBook : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                //con.Open();
                cmd = new SqlCommand("insert into BookInfo (AuthorID,CategoryID,PublisherID,BookName,Description,YearOfPublication,Price) " +
                    "values (@authorid,@categoryid,@publisherid,@bookname,@description,@dateofpublicatoin,@price)", con);
                cmd.Parameters.AddWithValue("@authorid", Int32.Parse(DropDownList1.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("@categoryid", Int32.Parse(DropDownList2.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("@publisherid", Int32.Parse(DropDownList3.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("@bookname", txtBookName.Text);
                cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@dateofpublicatoin", txtYearOfPublication.Text);
                cmd.Parameters.AddWithValue("@price", Convert.ToDecimal(txtPrice.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('inserted succesfully')</script>");
                //con.Close();
            }
            
        }
    }
}