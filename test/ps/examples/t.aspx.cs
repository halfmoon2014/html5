using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ps_examples_t : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string r = "<div data-role=\"page\" id=\"Gallery3\" class=\"gallery-page\"> ";

        r += " <div data-role=\"header\"> ";
        r += " 	<h1>322 1Gallery</h1> ";
        r += " </div>  ";
        r += " <div data-role=\"content\">	 ";
        r += " <div class=\"gallery\"> ";
        r += " 			<div class=\"gallery-row\"> ";
        r += " <div class=\"gallery-item\"><a href=\"images/full/016.jpg\" rel=\"external\"><img src=\"images/thumb/016.jpg\" alt=\"Image 016\" /></a></div> ";
        r += " <div class=\"gallery-item\"><a href=\"images/full/017.jpg\" rel=\"external\"><img src=\"images/thumb/017.jpg\" alt=\"Image 017\" /></a></div> ";
        r += " <div class=\"gallery-item\"><a href=\"images/full/020.jpg\" rel=\"external\"><img src=\"images/thumb/020.jpg\" alt=\"Image 20\" /></a></div> ";
        r += " </div> ";
        r += " </div> ";
        r += " </div> ";
        r += " <div data-role=\"footer\"> ";
        r += " <h4>&copy; 2011 Code Computerlove</h4> ";
        r += " </div> ";
        r += " </div> ";
        g3.InnerHtml = r;
    }
}