using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.BLL
{
    public class Map
    {

        public static bool add(YF.Model.Map map)
        {
            return YF.DAL.Map.add(map);
        }

        public static List<YF.Model.Map> List()
        {
            return YF.DAL.Map.List();
        }

        public static List<YF.Model.Map> filter(string str)
        {
            return YF.DAL.Map.filter(str);
        }

        public static bool update(YF.Model.Map map)
        {
            return YF.DAL.Map.update(map);
        }

        public static YF.Model.Map Getsign(string id)
        {
            return YF.DAL.Map.Getsign(id);
        }

        public static bool del(string id)
        {
            return YF.DAL.Map.del(id);
        }

        public static bool Search(string id)
        {
            return YF.DAL.Map.Search(id);
        }

        public static bool Search_id(string id)
        {
            return YF.DAL.Map.Search_id(id);
        }
    }
}
