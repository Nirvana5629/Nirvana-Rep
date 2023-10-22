using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.BLL
{
    public class User
    {
        public static bool login(string id, string password)
        {
            return YF.DAL.User.login(id, password);
        }
    }
}
