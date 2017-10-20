using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaryHelp.Business;

public partial class Jobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void Initialize()
    {
        grdJobs.DataSource = null;
        grdJobs.DataBind();
        lblError.Text = string.Empty;
        lblMessage.Text = string.Empty;
    }

    protected void btnCity_Click(object sender, EventArgs e)
    {
        Job job = null;
        User user = (User)Session["user"];

        try
        {
            Initialize();
            job = new Job();

            grdJobs.DataSource = job.GetJobsByCity(user.City, user.Id);
            grdJobs.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        finally
        {
            job = null;
            user = null;
        }
    }

    protected void grdJobs_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == System.Web.UI.WebControls.DataControlRowType.DataRow)
        {
            // when mouse is over the row, save original color to new attribute, and change it to highlight color
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#EEFFAA'");

            // when mouse leaves the row, change the bg color to its original value   
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }
    }

    protected void btnNeighborhood_Click(object sender, EventArgs e)
    {
        Job job = null;
        User user = (User)Session["user"];

        try
        {
            Initialize();
            job = new Job();

            grdJobs.DataSource = job.GetJobsByNeighborhood(user.Neighborhood, user.Id);
            grdJobs.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        finally
        {
            job = null;
            user = null;
        }
    }

    protected void btnApply_Click(object sender, EventArgs e)
    {
        Worker worker = null;
        User user = null;
        Job job = null;
        List<Job> jobs = null;

        try
        {
            user = (User)Session["user"];
            worker = new Worker();
            worker.Id = user.Id;

            jobs = new List<Job>();
            foreach (GridViewRow row in grdJobs.Rows)
            {
                CheckBox chk = (CheckBox)row.FindControl("cbSelect");

                if (chk.Checked)
                {
                    HiddenField idJob = (HiddenField)row.FindControl("idJob");
                    job = new Job();
                    job.Id = idJob.Value;

                    job.Client = new Client();
                    HiddenField clientEmail = (HiddenField)row.FindControl("clientEmail");
                    job.Client.EMail = job.GetClientEmail();

                    job.DateTimeJobStarts = Convert.ToDateTime(row.Cells[4].Text);
                    job.HoursForConclusion = Convert.ToDouble(row.Cells[5].Text);
                    job.Status = Job.STATUS.APPROVAL;

                    jobs.Add(job);
                }
            }
            worker.ApplyForJobs(jobs);
            Initialize();
            lblMessage.Text = "Your applications were submited successfully! Now, wait for approval and then, GO GET'EM TIGER! :D";
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}