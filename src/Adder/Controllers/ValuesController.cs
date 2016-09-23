using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Adder.Controllers
{
    [Route("api/[controller]")]
    public class AddController : Controller
    {
        // GET api/values
        [HttpGet]
        public int Get(int param1, int param2)
        {
            Console.WriteLine("Add API called with values " + param1 + " and " + param2);
            return param1 + param2;
        }
    }
}
