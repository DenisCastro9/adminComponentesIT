using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalTP4
{
    public partial class modificarComponente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["id_componente"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if(registros.Read())
            {
                this.TextBox2.Text = registros["nombre_componente"].ToString();
                this.TextBox3.Text = registros["web_componente"].ToString();

            }
            else
            {
                this.Label2.Text = "No existe un componente con ese codigo";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource2.UpdateParameters["nombre_componente"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSource2.UpdateParameters["web_componente"].DefaultValue = this.TextBox3.Text;
            this.SqlDataSource2.UpdateParameters["portada"].DefaultValue = this.FileUpload1.FileName;
            int cant;
            cant = SqlDataSource2.Update();
            if(cant == 1)
            {
                this.Label6.Text = "Se modifico el componente correctamente";
                this.TextBox2.Text = "";
                this.TextBox3.Text = "";
            }
            else
            {
                this.Label6.Text = "No se pudo modifcar correctamente el componente";
            }
        }
    }
}