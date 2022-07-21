using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Test.M3
{
    public partial class AddPatient : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd1_Click(object sender, EventArgs e)
        {
            using(con=new SqlConnection(ConfigurationManager.ConnectionStrings["Patientcon"].ConnectionString)
            {
                using (cmd=new SqlCommand("usp_AddPatient",con))
                {
                   cmd.CommandType = CommandType.StoredProcedure;
                   cmd.Parameters.AddWithValue("@PatientId",TxtPatientId.Text);
                   cmd.Parameters.AddWithValue("@PatientName",TxtPatientName.Text);
                   cmd.Parameters.AddWithValue("@Gender",DdlGender.ToString());
                   cmd.Parameters.AddWithValue("@Age",TxtAge.Text);
                   cmd.Parameters.AddWithValue("ContactNumber",TxtContactNo.Text);
                   cmd.Parameters.AddWithValue("@DoctorName",TxtDoctorName.Text);

                   if (con.State==ConnectionState.Closed)
                   {
                    con.Open();
                    }

                   cmd.ExecuteNonQuery();

                }
                   MessageBox.Show("Record updated successfully");


             }

        }
    }
}
