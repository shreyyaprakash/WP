using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Data.Sql;
using System.Data.OleDb;
using System.Windows.Forms;
using System.Configuration;

namespace WebApplication11
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string userid = id.Text;
            string password = pass.Text;
            SqlCommand cmd = new SqlCommand("SELECT id,password,pic FROM dbo.Userid where id='" + id.Text + "'and password='" + pass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string x = dt.Rows[0][2].ToString();
                MessageBox.Show("Login success");


                Response.Redirect(x);
            }
            else
            {
                MessageBox.Show("Invalid Login please check username and password");
            }
            con.Close();
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            id.Text = "";
            pass.Text = " ";
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}