using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaryHelp.Business;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "SlideShow", "showSlides()", true);

        if (!IsPostBack)
        {
            Session["user"] = null;
            if (Request.QueryString.Count > 0)
            {
                if (Request.QueryString["message"].ToString().Equals("mustlogin"))
                    lblError.Text = "Please, type your E-Mail and password and press 'Log In'";
            }
        }
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        //User user = null;

        //try
        //{
        //    user = new User();
        //    user.LogIn(txtEmail.Text.ToLower(), txtPass.Text.Trim());

        //    Session["user"] = (User) user;

        //    Response.Redirect("Home.aspx", true);
        //}
        //catch (Exception ex)
        //{
        //    lblError.Text = ex.Message;
        //}
        //finally
        //{
        //    user = null;
        //}
    }

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {

    }
}