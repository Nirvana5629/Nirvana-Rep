using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;

namespace final
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            YF.Model.Map map = new YF.Model.Map();
            map.Id = this.id.Text;
            map.RouteNum = this.routeNum.Text;
            map.Direction = this.direction.Text;
            map.RouteType = this.routeType.Text;
            map.PositionNum = this.positionNum.Text;
            map.Type = this.type.Text;
            map.IncreaseDemand = this.increaseDemand.Text;
            map.Optimazation = this.optimazation.Text;
            map.Latitude = double.Parse(this.latitude.Text);
            map.Longitude = double.Parse(this.longitude.Text);


            if (YF.BLL.Map.Search(this.id.Text) == false)
            {
                YF.JsHelper.AlertAndRedirect("该编号已存在！", "add.aspx");
            }

            if(YF.BLL.Map.add(map)==true)
            {
                YF.JsHelper.AlertAndRedirect("添加成功！", "add.aspx");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("添加失败！", "add.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            YF.JsHelper.Redirect( "index1.aspx");
        }

    }
}