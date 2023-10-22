using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;

namespace final
{
    public partial class sign_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                YF.Model.Map map = YF.BLL.Map.Getsign(id);


                this.routeNum.Text = map.RouteNum;
                this.direction.Text = map.Direction;
                this.routeType.Text = map.RouteType;
                this.positionNum.Text = map.PositionNum;
                this.type.Text = map.Type;
                this.increaseDemand.Text = map.IncreaseDemand;
                this.optimazation.Text = map.Optimazation;
                this.latitude.Text = map.Latitude.ToString();
                this.longitude.Text = map.Longitude.ToString();
                this.id.Value = map.Id;
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            YF.Model.Map map = new YF.Model.Map();
            map.RouteNum = this.routeNum.Text;
            map.Direction = this.direction.Text;
            map.RouteType = this.routeType.Text;
            map.PositionNum = this.positionNum.Text;
            map.Type = this.type.Text;
            map.IncreaseDemand = this.increaseDemand.Text;
            map.Optimazation = this.optimazation.Text;
            map.Latitude = double.Parse(this.latitude.Text);
            map.Longitude = double.Parse(this.longitude.Text);
            map.Id = this.id.Value;


            if (YF.BLL.Map.update(map) == true)
            {
                YF.JsHelper.AlertAndRedirect("修改成功！", "index1.aspx");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("修改失败！", "index1.aspx");
            }
        }

        protected void hidden_id_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            YF.JsHelper.Redirect("index1.aspx");
        }
    }
}