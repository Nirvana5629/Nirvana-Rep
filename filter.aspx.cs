using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class filter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.AutoGenerateColumns = false;
            GridView1.DataSource = YF.BLL.Map.List();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = YF.BLL.Map.List();
            string strsql = "select * from map where";
            if (this.rn.Text != "")
            {
                strsql = strsql+" routeNum='" + this.rn.Text + "'";
            }
            if (this.drt.Text != "")
            {
                if(this.rn.Text == "")
                {
                    strsql = strsql + " direction='" + this.drt.Text + "'";
                }
                else
                {
                    strsql = strsql + " and direction='" + this.drt.Text + "'";
                }
            }
            if (this.rt.Text != "")
            {
                if(this.rn.Text == "" && this.drt.Text == "")
                {
                    strsql = strsql + " routeType='" + this.rt.Text + "'";
                }
                else
                {
                    strsql = strsql + " and routeType='" + this.rt.Text + "'";
                }
            }
            if (this.st.Text != "")
            {
                if (this.rn.Text == "" && this.drt.Text == "" && this.rt.Text == "")
                {
                    strsql = strsql + " type='" + this.st.Text + "'";
                }
                else
                {
                    strsql = strsql + " and type='" + this.st.Text + "'";
                }   
            }
            if (this.rn.Text == "" && this.drt.Text == "" && this.rt.Text == ""&& this.st.Text == "")
            {
                strsql= "select * from map order by id desc";
            }
            GridView1.DataSource = YF.BLL.Map.filter(strsql);
            GridView1.DataBind();
            
            //Session["filterstr"] = strsql;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            YF.JsHelper.Redirect("menu.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string strsql = "select * from map where";
            if (this.rn.Text != "")
            {
                strsql = strsql + " routeNum='" + this.rn.Text + "'";
            }
            if (this.drt.Text != "")
            {
                if (this.rn.Text == "")
                {
                    strsql = strsql + " direction='" + this.drt.Text + "'";
                }
                else
                {
                    strsql = strsql + " and direction='" + this.drt.Text + "'";
                }
            }
            if (this.rt.Text != "")
            {
                if (this.rn.Text == "" && this.drt.Text == "")
                {
                    strsql = strsql + " routeType='" + this.rt.Text + "'";
                }
                else
                {
                    strsql = strsql + " and routeType='" + this.rt.Text + "'";
                }
            }
            if (this.st.Text != "")
            {
                if (this.rn.Text == "" && this.drt.Text == "" && this.rt.Text == "")
                {
                    strsql = strsql + " type='" + this.st.Text + "'";
                }
                else
                {
                    strsql = strsql + " and type='" + this.st.Text + "'";
                }
            }
            if (this.rn.Text == "" && this.drt.Text == "" && this.rt.Text == "" && this.st.Text == "")
            {
                strsql = "select * from map order by id desc";
            }
            Session.Add("sql", strsql);
            Response.Redirect("m_filter.aspx");
        }
    }
}