using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string id = this.id.Text ;
            //string password = this.password.Text;

            //if (YF.BLL.User.login(id, password))
            //{
            //    YF.JsHelper.Redirect( "map.aspx");
            //}
            //else
            //{
            //    YF.JsHelper.AlertAndRedirect("登陆失败！", "login.aspx");
            //}
        }

        protected void id_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string id = this.id.Text;
            string password = this.password.Text;

            if (YF.BLL.User.login(id, password))
            {
                YF.JsHelper.Redirect("firstpage.html");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("登陆失败！", "login.aspx");
            }
        }
    }
}