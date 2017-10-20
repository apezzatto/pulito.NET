using MaryHelp.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCity_Click(object sender, EventArgs e)
    {
        Worker worker = null;
        User user = (User)Session["user"];

        try
        {
            worker = new Worker();

            worker.Id = user.Id;
            grdHistory.DataSource = worker.GetMyHistoryByCity(user.City.Id);
            grdHistory.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        finally
        {
            worker = null;
            user = null;
        }
    }

    protected void btnNeighborhood_Click(object sender, EventArgs e)
    {
        Worker worker = null;
        User user = (User)Session["user"];

        try
        {
            worker = new Worker();

            worker.Id = user.Id;
            grdHistory.DataSource = worker.GetMyHistoryByCity(user.Neighborhood.Id);
            grdHistory.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        finally
        {
            worker = null;
            user = null;
        }
    }
}