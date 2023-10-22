using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.Model
{
    public class User
    {

        private string u_id;
        private string u_password;


        public string U_id { get => u_id; set => u_id = value; }
        public string U_password { get => u_password; set => u_password = value; }
    }
}
