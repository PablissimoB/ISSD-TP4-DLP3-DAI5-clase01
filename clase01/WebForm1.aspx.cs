using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase01
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add(new ListItem("Argentina", "arg"));
                DropDownList1.Items.Add(new ListItem("Chile", "chl"));
            }

        }

        public string getNivelEducativo()
        {
            string nivelEducativo = "";
            if (CheckBox1.Checked)
            {
                nivelEducativo+= " "+ CheckBox1.Text;
            }
            if (CheckBox2.Checked)
            {
                nivelEducativo += " " + CheckBox2.Text;
            }
            nivelEducativo += CheckBox3.Checked ? " " + CheckBox3.Text:"";

            return nivelEducativo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text !="" && TextBox2.Text !="" && RadioButtonList1.SelectedIndex >=0)
            {
                Label3.Text = $"Nombre: {TextBox2.Text}, " +
                    $"Apellido: {TextBox1.Text}," +
                    $"{RadioButtonList1.SelectedItem.Text}," +
                    $"nivel educativo: {getNivelEducativo()}";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string codPais = DropDownList1.SelectedValue;
            ListBox1.Items.Clear();
            switch(codPais)
            {
                case "arg":
                    ListBox1.Items.Add(new ListItem("Cordoba", "cba"));
                    ListBox1.Items.Add(new ListItem("CABA", "caba"));
                    break;
                case "chl":
                    ListBox1.Items.Add(new ListItem("Santiago", "sgo"));
                    break;
            }

        }
    }
}