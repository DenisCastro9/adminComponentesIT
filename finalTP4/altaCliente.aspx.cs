using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalTP4
{
    public partial class altaCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["nombre_cliente"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = SqlDataSource1.Insert();
            if(cant == 1)
            {
                this.Label2.Text = "Se Registro correctamente el cliente";
                this.TextBox1.Text = "";
            }
            else
            {
                this.Label2.Text = "No se pudo registrar correctamente el cliente";
            }
        }
    }
}