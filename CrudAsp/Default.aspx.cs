using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CrudAsp
{
    public partial class _Default : Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-1LUTOGV\ACHRAF;Initial Catalog=School;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        DataTable dt = new DataTable();
        DataTable dtS = new DataTable();
        protected void RemplirGrid()
        {
            cmd.CommandText = "Select * from Student";
            cmd.Connection = cnx;
            cnx.Open();
            dr = cmd.ExecuteReader();
            dt.Load(dr);
            dr.Close();
            cnx.Close();
            GridStudent.DataSource = dt;
            GridStudent.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RemplirGrid();
                cmd.CommandText = "Select Adress from Student";
                cnx.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ddlAdress.Items.Add(dr[0].ToString());
                    }
                }
                dr.Close();
                cnx.Close();
            }
        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "insert into Student values('"+txtName.Text+"','"+ddlAdress.SelectedValue+"','"+txtAge.Text+"','"+txtContact.Text+"')";
            cmd.Connection = cnx;
            cnx.Open();
            cmd.ExecuteNonQuery();
            cnx.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student added successfully !');", true);
            RemplirGrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "update Student set StudentName = '" + txtName.Text + "', Adress = '" + ddlAdress.SelectedValue + "', Age = '" + txtAge.Text + "',Contact = '" + txtContact.Text + "' where StudentId = '" + txtStId.Text + "'";
            cmd.Connection = cnx;
            cnx.Open();
            cmd.ExecuteNonQuery();
            cnx.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student updated successfully !');", true);
            RemplirGrid();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "delete from Student where StudentId = '" + txtStId.Text + "'";
            cmd.Connection = cnx;
            cnx.Open();
            cmd.ExecuteNonQuery();
            cnx.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student deleted successfully !');", true);
            RemplirGrid();
        }

        protected void btmSearch_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("Select * from Stagiaire where StudentId = '" + txtStId.Text + "'", cnx);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dtS);
                GridStudent.DataSource = dtS;
                GridStudent.DataBind();

            }
            catch (Exception ex) { }
        }
    }
}