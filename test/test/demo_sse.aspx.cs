using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo_sse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "text/event-stream";
        Response.Expires = -1;
        DateTime dt1 = DateTime.Now;
        Response.Write("data:1 " + dt1);
        Response.Write("data:2 " + dt1);
        Response.Flush();
    }
}