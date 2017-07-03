using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ContractManagment
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getWhileLoopData()
        {
            string htmlStr = "";
            SqlConnection thisConnection = new SqlConnection();
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT * from Test";
            thisConnection.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string Name = reader.GetString(1);
                string Pass = reader.GetString(2);
                htmlStr += "<tr><td>" + id + "</td><a href='View.aspx'>" + Name + "</a><td>" + Pass + "</td></tr>";
            }

            thisConnection.Close();
            return htmlStr;
        }
    }
}