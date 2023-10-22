using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace YF.DAL
{
    public class Map
    {

        public static bool add(YF.Model.Map map)
        {
            bool result = false;

            string strsql = "insert into map (id,routeNum,direction,routeType,positionNum,type,increaseDemand,optimazation,latitude,longitude) values ('" + map.Id + "','" + map.RouteNum + "','" + map.Direction + "','" + map.RouteType + "','" + map.PositionNum + "','" + map.Type + "','" + map.IncreaseDemand + "','" + map.Optimazation + "'," + map.Latitude + "," + map.Longitude + ")";

            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0)
            {
                result = true;
            }
            return result;
        }

        public static List<YF.Model.Map> List()
        {
            string strsql = "select * from map order by id desc";
            DataTable datatable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dttolist(datatable);
        }

        public static List<YF.Model.Map> filter(string str)
        {
            DataTable datatable = YF.MsSqlHelper.YFMsSqlHelper.Query(str).Tables[0];
            return Dttolist(datatable);
        }
        public static List<YF.Model.Map> Dttolist(DataTable datatable)
        {
            List<YF.Model.Map> list = new List<YF.Model.Map>();
            for (int i = 0; i < datatable.Rows.Count; i++)
            {
                YF.Model.Map map = new Model.Map();

                map.Id = datatable.Rows[i]["id"].ToString();
                map.RouteNum = datatable.Rows[i]["routeNum"].ToString();
                map.Direction = datatable.Rows[i]["direction"].ToString();
                map.RouteType = datatable.Rows[i]["routeType"].ToString();
                map.PositionNum = datatable.Rows[i]["positionNum"].ToString();
                map.Type = datatable.Rows[i]["type"].ToString();
                map.IncreaseDemand = datatable.Rows[i]["increaseDemand"].ToString();
                map.Optimazation = datatable.Rows[i]["optimazation"].ToString();
                map.Latitude = Convert.ToDouble(datatable.Rows[i]["latitude"].ToString());
                map.Longitude = Convert.ToDouble(datatable.Rows[i]["longitude"].ToString());

                list.Add(map);
            }
            return list;
        }

        public static bool del(string id)
        {
            ///删除某项
            bool result = false;
            string strsql = "delete from map where id='" + id + "'";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0)
            {
                result = true;
            }
            return result;
        }

        public static bool update(YF.Model.Map map)
        {
            bool result = false;
            string strsql = "update map set id='" + map.Id + "',routeNum='" + map.RouteNum + "',direction='" + map.Direction + "',routeType='" + map.RouteType + "',positionNum='" + map.PositionNum + "',type='" + map.Type + "',increaseDemand='" + map.IncreaseDemand + "',optimazation='" + map.Optimazation + "',latitude=" + map.Latitude + ",longitude=" + map.Longitude + " where id='" + map.Id + "'";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0)
            {
                result = true;
            }
            return result;
        }

        public static YF.Model.Map Getsign(string id)
        {
            YF.Model.Map map = new Model.Map();
            string strsql = "select * from map where id='" + id + "'";
            DataTable datatable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (datatable.Rows.Count != 0)
            {
                map.Id = datatable.Rows[0]["id"].ToString();
                map.RouteNum = datatable.Rows[0]["routeNum"].ToString();
                map.Direction = datatable.Rows[0]["direction"].ToString();
                map.RouteType = datatable.Rows[0]["routeType"].ToString();
                map.PositionNum = datatable.Rows[0]["positionNum"].ToString();
                map.Type = datatable.Rows[0]["type"].ToString();
                map.IncreaseDemand = datatable.Rows[0]["increaseDemand"].ToString();
                map.Optimazation = datatable.Rows[0]["optimazation"].ToString();
                map.Latitude = double.Parse(datatable.Rows[0]["latitude"].ToString());
                map.Longitude = double.Parse(datatable.Rows[0]["longitude"].ToString());
                //map.Longitude = Convert.ToDouble(datatable.Rows[0]["longitude"].ToString());
            }
            return map;
        }

        public static bool Search(string id)
        {
            ///查询用户名是否重复
            bool result = false;
            string strsql = "select * from map where id='" + id + "'";
            DataTable datatable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (datatable.Rows.Count == 0)
            {
                result = true;
            }
            return result;
        }

        public static bool Search_id(string id)
        {
            ///查询用户名是否重复
            bool result = false;
            string strsql = "select * from map where id='" + id + "'";
            DataTable datatable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (datatable.Rows.Count != 0)
            {
                result = true;
            }
            return result;
        }
    }
}
