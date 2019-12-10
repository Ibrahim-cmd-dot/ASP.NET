using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;


namespace Evidence_Asp
{
    public partial class ReportTrainees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=EvidenceDB;Integrated Security=True");
            ReportDocument rprt = new ReportDocument();
            con.Open();
     



            rprt.Load(Server.MapPath("~/CrystalReport1.rpt"));

            SqlCommand cmd = new SqlCommand("select * from Trainee where Gender=@gender", con);
            cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataSet1 ds = new DataSet1();
            sda.Fill(ds, "tblStudent");

            rprt.SetDataSource(ds.Tables["tblStudent"]);

            CrystalReportViewer1.ReportSource = rprt;
            CrystalReportViewer1.DataBind();
            con.Close();


        }
    }
}