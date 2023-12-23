using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalTP4
{
    public partial class altaComponente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["nombre_componente"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.InsertParameters["web_componente"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSource1.InsertParameters["portada"].DefaultValue = this.FileUpload1.FileName;
            int cant;
            cant = this.SqlDataSource1.Insert();
            if (cant == 1)
            {
                this.Label4.Text = "Se Guardo Correctamente el componente";
                this.TextBox1.Text = "";
                this.TextBox2.Text = "";
                if (File.Exists(this.Server.MapPath(".") + "/portadas/" + this.FileUpload1.FileName))
                {
                    this.Label4.Text = "Ya existe una portada con el mismo nombre en el servidor";
                }
                else
                {
                    this.FileUpload1.SaveAs(Server.MapPath(".") + "/portadas/" + this.FileUpload1.FileName);
                }
            }
            else
            {
                this.Label4.Text = "No se pudo guardar el Componente";
            }
        }
    }
}