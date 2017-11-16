using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaryHelp.Business;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((object)Session["user"] == null)
        {
            lo.Visible = false;
            sg.Visible = true;
            hm.Visible = false;
            //log.Visible = true;
            lblUser.Text = "Welcome, guest";
            if (Session.IsNewSession)
                Response.Redirect("Login.aspx", false);
        }
        else
        {
            lo.Visible = true;
            sg.Visible = false;
            hm.Visible = true;
            //log.Visible = false;
            User user;
            user = (User)Session["user"];
            lblUser.Text = "Welcome, " + user.Name;
        }
    }

    protected void lnkSignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx?mode=signup", true);
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //User user = null;

        //try
        //{
        //    user = new User();
        //    user.LogIn(txtEmail.Text.ToLower(), txtPass.Text.Trim());

        //    Session["user"] = (User)user;

        //    Response.Redirect("Home.aspx", true);
        //}
        //catch (Exception ex)
        //{
        //    //lblError.Text = ex.Message;
        //}
        //finally
        //{
        //    user = null;
        //}
    }
}
