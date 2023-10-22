using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class encoding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(this.routeNum.Text==""|| this.positionNum.Text==""|| this.service.Text==""|| this.year.Text=="")
            {
                this.id.Text = "请输入完整的标志信息！！";
            }
            else
            {
                this.id.Text = this.routeNum.Text + this.positionNum.Text + this.direction_d.SelectedValue
                + this.routeType_d.SelectedValue + this.zhicheng_d.SelectedValue + this.type_d.SelectedValue
                + this.shape.SelectedValue + this.fanguang.SelectedValue + this.service.Text + this.year.Text;
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            YF.JsHelper.Redirect("menu.aspx");
        }
    }
}