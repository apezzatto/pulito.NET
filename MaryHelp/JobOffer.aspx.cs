using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using MaryHelp.Business;

public partial class JobOffer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreateJob_Click(object sender, EventArgs e)
    {
        Client client = null;
        User user = null;
        Job job = null;

        try
        {
            if (validateInfos())
            {
                user = (User)Session["user"];
                client = new Client();
                client.Id = user.Id;
                job = new Job();
                job.Client = client;
                job.DateTimeJobStarts = Convert.ToDateTime(txtDtRequired.Text + " " + txtStartTime.Text);
                job.HoursForConclusion = Convert.ToDouble(lblHours.Text.Replace(':','.'));
                job.Vacuum = chkVacuum.Checked;
                job.Dishes = chkDishes.Checked;
                job.Garage = chkGarage.Checked;
                job.Laundry = chkLaundry.Checked;
                job.QtyRooms = Convert.ToInt32(txtRooms.Text);
                job.QtyBaths = Convert.ToInt32(txtBaths.Text);
                job.QtyWindows = Convert.ToInt32(txtWindows.Text);
                job.QtyMirrors = Convert.ToInt32(txtMirrors.Text);
                job.Price = Convert.ToDecimal(lblPrice.Text);

                client = new Client();
                client.CreateJob(job);

                lblMessage.Text = "You job request was created successfully";
                lblError.Text = string.Empty;
                initialize();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        finally
        {
            client = null;
            user = null;
            job = null;
        }
    }

    private void initialize()
    {
        txtRooms.Text = string.Empty;
        txtBaths.Text = string.Empty;
        txtWindows.Text = string.Empty;
        txtMirrors.Text = string.Empty;
        chkDishes.Checked = false;
        chkGarage.Checked = false;
        chkLaundry.Checked = false;
        chkVacuum.Checked = false;
        Label1.Visible = false;
        Label2.Visible = false;
        lblPrice.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        lblHours.Visible = false;
        txtDtRequired.Text = string.Empty;
        txtStartTime.Text = string.Empty;
    }

    private bool validateInfos()
    {
        Job job = (Job)ViewState["job"];
        bool ret = true;

        if ((Convert.ToInt32(txtRooms.Text) != job.QtyRooms) ||
            (Convert.ToInt32(txtBaths.Text) != job.QtyBaths) ||
            (Convert.ToInt32(txtWindows.Text) != job.QtyWindows) ||
            (Convert.ToInt32(txtMirrors.Text) != job.QtyMirrors) ||
            (chkDishes.Checked != job.Dishes) ||
            (chkGarage.Checked != job.Garage) ||
            (chkLaundry.Checked != job.Laundry) ||
            (chkVacuum.Checked != job.Vacuum))
        {
            ret = false;
            lblError.Text = "You need to recalculate the price before create the job";
            lblMessage.Text = string.Empty;
        }

        return ret;
    }

    private bool Validation()
    {
        bool ret = true;

        if ((!txtRooms.Text.Trim().Equals(string.Empty)) ||
            (!txtBaths.Text.Trim().Equals(string.Empty)) ||
            (!txtWindows.Text.Trim().Equals(string.Empty)) ||
            (!txtMirrors.Text.Trim().Equals(string.Empty)))
        {

            if ((Convert.ToInt32(txtRooms.Text.Trim()) < 1) ||
                (Convert.ToInt32(txtBaths.Text.Trim()) < 1) ||
                (Convert.ToInt32(txtWindows.Text.Trim()) < 1) ||
                (Convert.ToInt32(txtMirrors.Text.Trim()) < 1))
            {
                lblMessage.Text = "Rooms, Baths, Windows and Mirrors' quantity must be greater than 0.";
                ret = false;
            }
        }
        else
        {
            lblMessage.Text = "Rooms, Baths, Windows and Mirrors' quantity must be a numeric value greater than 0.";
            ret = false;
        }
        return ret;
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        Job job = null;
        double[] price_time;

        try
        {
            if (this.Validation())
            {
                job = new Job();
                job.Vacuum = chkVacuum.Checked;
                job.Dishes = chkDishes.Checked;
                job.Garage = chkGarage.Checked;
                job.Laundry = chkLaundry.Checked;
                job.QtyRooms = Convert.ToInt32(txtRooms.Text);
                job.QtyBaths = Convert.ToInt32(txtBaths.Text);
                job.QtyWindows = Convert.ToInt32(txtWindows.Text);
                job.QtyMirrors = Convert.ToInt32(txtMirrors.Text);
                ViewState["job"] = job;

                price_time = job.CalculatePriceAndTime();

                if (price_time[1] == 0.00)
                {
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;
                    lblPrice.Visible = false;
                    lblPrice.Text = string.Empty;
                    lblHours.Visible = false;
                    lblHours.Text = string.Empty;
                }
                else
                {
                    Label1.Visible = true;
                    Label2.Visible = true;
                    lblPrice.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;
                    lblHours.Visible = true;
                    lblPrice.Text = price_time[1].ToString("N2");
                    lblHours.Text = price_time[0].ToString().Replace('.', ':');
                }
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        finally
        {
            job = null;
        }
    }

    protected void txtRooms_TextChanged(object sender, EventArgs e)
    {

    }
}