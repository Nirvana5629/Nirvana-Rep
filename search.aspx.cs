using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class searchh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sign_id = this.idd.Text;

            if (YF.BLL.Map.Search_id(sign_id))
            {
                YF.Model.Map map = YF.BLL.Map.Getsign(sign_id);

                this.idd.Text = map.Id;
                this.routeNum.Text = map.RouteNum;
                this.direction.Text = map.Direction;
                this.routeType.Text = map.RouteType;
                this.positionNum.Text = map.PositionNum;
                this.type.Text = map.Type;
                this.increaseDemand.Text = map.IncreaseDemand;
                this.optimazation.Text = map.Optimazation;
                this.latitude.Text = map.Latitude.ToString();
                this.longitude.Text = map.Longitude.ToString();
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("查找失败！", "search.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sign_id = this.idd.Text;
            if (YF.BLL.Map.del(sign_id) == true)
            {
                YF.JsHelper.AlertAndRedirect("删除成功！", "search.aspx");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("删除失败！", "search.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            YF.Model.Map map = new YF.Model.Map();
            map.Id = this.idd.Text;
            map.RouteNum = this.routeNum.Text;
            map.Direction = this.direction.Text;
            map.RouteType = this.routeType.Text;
            map.PositionNum = this.positionNum.Text;
            map.Type = this.type.Text;
            map.IncreaseDemand = this.increaseDemand.Text;
            map.Optimazation = this.optimazation.Text;
            if(this.latitude.Text!="")
            {
                map.Latitude = double.Parse(this.latitude.Text);
            }
            if (this.longitude.Text != "")
            {
                map.Longitude = double.Parse(this.longitude.Text);
            }
            


            if (YF.BLL.Map.update(map) == true)
            {
                YF.JsHelper.AlertAndRedirect("修改成功！", "search.aspx");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("修改失败！", "search.aspx");
            }
        }
    }
}