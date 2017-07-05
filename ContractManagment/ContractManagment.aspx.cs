using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ContractManagment
{
    public partial class ContractManagment : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection sqlConnection = new SqlConnection(strConnection);

            try
            {
                sqlConnection.Open();
                string myQuery = "SELECT * FROM UserTable WHERE UserName= '" + Login1.UserName + "' AND UserPassword = '" + Login1.Password + " ' ";
                SqlCommand cmd = new SqlCommand(myQuery, sqlConnection);
                int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (count == 1)
                {
                    Response.Redirect("HomePage.aspx");
                }
            }
            catch (SqlException ex)
            {
                Response.Write("There is an error on connection or sql query");
            }

        }
    }
}

