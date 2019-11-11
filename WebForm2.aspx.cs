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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\sqlExpress;Initial Catalog=EON;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = "";
            if (RadioButton1.Checked)
                a = "M";
            else
                a = "F";

            string b = "";
            if (CheckBox1.Checked || CheckBox1.Checked || CheckBox1.Checked)
            {
                if (CheckBox1.Checked)
                    b += "Day1";
                if (CheckBox2.Checked)
                    b += "Day2";
                if (CheckBox3.Checked)
                    b += "Day3";
            }
            else
            {
                MessageBox.Show("Select atleast a day");
            }
            var sqlQuery = "insert into assign1(No,Name,Email,Gender,[Date reg],[Selected days],[Add Request]) values(newid(),'" + TextBox1.Text + "' ,'" + TextBox2.Text + "' ,'" + a + "', '" + TextBox3.Text + "','" + b + "', '" + TextBox4.Text + "')";

            cmd.CommandText = sqlQuery;
            cmd.Connection = Con;
            if (Con.State == ConnectionState.Closed)
                Con.Open();
            cmd.ExecuteNonQuery();
            MessageBox.Show("inserted");
            Con.Close();
            Server.Transfer("WebForm1.aspx");


        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {




        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
    
