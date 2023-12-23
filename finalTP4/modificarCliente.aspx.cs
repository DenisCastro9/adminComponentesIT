using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalTP4
{
    public partial class modificarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["id_cliente"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if(registros.Read())
            {
                this.TextBox2.Text = registros["nombre_cliente"].ToString();
            }
            else
            {
                this.Label2.Text = "No existe ningun cliente con ese codigo";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource2.UpdateParameters["nombre_cliente"].DefaultValue = this.TextBox2.Text;
            int cant;
            cant = this.SqlDataSource2.Update();
            if(cant == 1)
            {
                this.Label4.Text = "Se modifico correctamente el cliente";
                this.TextBox2.Text = "";
            }
            else
            {
                this.Label4.Text = "No se pudo modificar correctamente el cliente";
            }
        }
    }
}