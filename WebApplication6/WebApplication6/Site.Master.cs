using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{

    public partial class SiteMaster : MasterPage
    {
        //string connectionString = "Data Source=MAURYA\\SQLEXPRESS;Initial Catalog=IntranetMailingSystem;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            IsAdminRole();
        }

        public int IsAdminRole()
        {

            int loginID = 10;
            string query = "SELECT IsAdmin FROM Registration WHERE id = @admin";
            int IsAdmin = 0;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@admin", loginID); // Bind parameter instead of embedding value

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows && reader.Read())
                        {
                            IsAdmin = Convert.ToInt32(reader["IsAdmin"]); // Access column value directly
                        }
                    }
                }
            }
            return IsAdmin;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }


}