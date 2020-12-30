using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Models
{
    public class User
    {
        string taikhoan, id,  email, pass, sdt, dc;

        public string Taikhoan { get => taikhoan; set => taikhoan = value; }
        public string Id { get => id; set => id = value; }
        public string Email { get => email; set => email = value; }
        public string Pass { get => pass; set => pass = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string Dc { get => dc; set => dc = value; }
    }
}