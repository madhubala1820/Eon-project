using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Eon_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\sqlExpress;Initial Catalog=EON;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {                
                MessageBox.Show("Connection done");
                cmd.CommandText="Select * From assign1";
                cmd.Connection = Con;
                if (Con.State == ConnectionState.Closed)
                Con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                Con.Close();
            }
           
            

            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm2.aspx");
        }
    }
}