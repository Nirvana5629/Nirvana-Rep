using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace YF.DAL
{
    public class User
    {
        public static bool login(string id, string password)
        {
            ///用户名和密码相同时,登录,返回True
            bool result = false;
            string strsql = "select * from [asp_l].[dbo].[user] where u_id='" + id + "' and u_password='" + password + "'";

            DataTable datatable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (datatable.Rows.Count != 0)
            {
                result = true;
            }
            return result;
        }
    }
}
