using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Styles
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        private void calculo()
        {
            if (operando1.Text.Length > 0 && operando2.Text.Length > 0)
            {

                double res = 0;
                double x1 = Convert.ToDouble(operando1.Text);
                double x2 = Convert.ToDouble(operando2.Text);

                switch (operador.SelectedValue)
                {

                    case "+": res = x1 + x2; break;
                    case "-": res = x1 - x2; break;
                    case "*": res = x1 * x2; break;
                    case "/": res = x1 / x2; break;

                }
                Label1.Text = res.ToString();
            }
        }




    }
}