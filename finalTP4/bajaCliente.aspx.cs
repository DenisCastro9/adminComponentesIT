using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalTP4
{
    public partial class bajaCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DeleteParameters["id_cliente"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = SqlDataSource1.Delete();
            if(cant == 1)
            {
                this.Label2.Text = "Se borro correctamente el cliente";
                this.TextBox1.Text = "";
            }
            else
            {
                this.Label2.Text = "No se pudo borrar correctamente el cliente";
            }
        }
    }
}