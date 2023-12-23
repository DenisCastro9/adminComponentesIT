using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalTP4
{
    public partial class ordenCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource3.InsertParameters["id_componente"].DefaultValue = this.DropDownList2.SelectedValue;
            this.SqlDataSource3.InsertParameters["id_cliente"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSource3.InsertParameters["fecha_orden"].DefaultValue = DateTime.Now.ToShortDateString();
            int cant;
            cant = SqlDataSource3.Insert();
            if(cant == 1)
            {
                this.Label3.Text = "Se Cargo Correctamente";
                HttpCookie cookie1 = new HttpCookie("IT", this.DropDownList2.Text);
                this.Response.Cookies.Add(cookie1);
                this.Label4.Text = "Se creo una cookie";
            }
            else
            {
                this.Label3.Text = "No se pudo Cargar la orden";
            }
        }
    }
}