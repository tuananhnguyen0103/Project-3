using gg_signin.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace gg_signin.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default

        public ActionResult Index(google g)
        {

            return View();
        }
        public void add(string name,string pass)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(string.Format("SET IDENTITY_INSERT tblUsers ON insert into tblUsers(UserId,EmailId,Passcode) values('18','{0}','{1}')", name,pass), con);
            cmd.ExecuteReader();
        }
     
    }
}