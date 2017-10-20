using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaryHelp.Business;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlCity.Enabled = false;
            ddlNeighborhood.Enabled = false;
            LoadProvince();

            if (Request.QueryString["mode"].Equals("profile"))
            {
                btnSave.Visible = true;
                btnCreateAccount.Visible = false;

                LoadProfile();
            }
            else if (Request.QueryString["mode"].Equals("signup"))
            {
                btnSave.Visible = false;
                btnCreateAccount.Visible = true;
            }
        }
    }

    private void LoadProfile()
    {
        User user = (User)Session["user"];

        user.LoadProfile();
        
        txtName.Text = user.Name;
        txtMiddle.Text = user.MiddleName;
        txtLast.Text = user.LastName;
        txtEmail.Text = user.EMail;
        txtAddress1.Text = user.Address1;
        txtAddress2.Text = user.Address2;
        txtZip.Text = user.ZipCode;

        ddlProvince.SelectedValue = user.Province.Id.ToString();

        LoadCity(user.Province.Id);
        ddlCity.SelectedValue = user.City.Id.ToString();

        LoadNeighborhood(user.City.Id);
        ddlNeighborhood.SelectedValue = user.Neighborhood.Id.ToString();

        user = null;
    }

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        User user = null;
        Province province = null;
        City city = null;
        Neighborhood neighborhood = null;

        try
        {
            province = new Province();
            province.Id = Convert.ToInt16(ddlProvince.SelectedValue);

            city = new City();
            city.Id = Convert.ToInt16(ddlCity.SelectedValue);

            neighborhood = new Neighborhood();
            neighborhood.Id = Convert.ToInt16(ddlNeighborhood.SelectedValue);

            user = new User(null, txtName.Text.Trim(), txtMiddle.Text.Trim(), txtLast.Text.Trim(), txtAddress1.Text.Trim(), txtAddress2.Text.Trim(), province, city, neighborhood, txtZip.Text.Trim(), txtEmail.Text.Trim(), txtPass.Text.Trim());
            user.SignUp();

            Session["user"] = (User)user;

            Server.Transfer("Home.aspx", true);
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
        finally
        {
            user = null;
            province = null;
            city = null;
            neighborhood = null;
        }
    }

    private void LoadProvince()
    {
        Province province = new Province();
        List<Province> provinces;

        ListItem item = new ListItem("-- Select a Province --", string.Empty, true);
        ddlProvince.Items.Add(item);

        provinces = province.GetAll();

        foreach (Province p in provinces)
        {
            item = new ListItem(p.Name, p.Id.ToString());
            ddlProvince.Items.Add(item);
        }

        ddlProvince.DataBind();
    }

    private void LoadCity(int idProvince)
    {
        City city = new City();
        List<City> cities;

        ListItem item = new ListItem("-- Select a City --", string.Empty, true);

        ddlCity.Enabled = true;
        ddlCity.Items.Clear();
        ddlCity.Items.Add(item);

        cities = city.GetCitiesByProvince(idProvince);

        foreach (City c in cities)
        {
            item = new ListItem(c.Name, c.Id.ToString());
            ddlCity.Items.Add(item);
        }

        ddlCity.DataBind();
    }

    private void LoadNeighborhood(int idCity)
    {
        Neighborhood neighborhood = new Neighborhood();
        List<Neighborhood> neighborhoods;

        ListItem item = new ListItem("-- Select a Neighborhood --", string.Empty, true);

        ddlNeighborhood.Enabled = true;
        ddlNeighborhood.Items.Clear();
        ddlNeighborhood.Items.Add(item);

        neighborhoods = neighborhood.GetNeighborhoodByCity(idCity);

        foreach (Neighborhood n in neighborhoods)
        {
            item = new ListItem(n.Name, n.Id.ToString());
            ddlNeighborhood.Items.Add(item);
        }

        ddlNeighborhood.DataBind();
    }

    protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!ddlProvince.SelectedValue.Equals(string.Empty))
            LoadCity(Convert.ToInt16(ddlProvince.SelectedValue));
    }

    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!ddlCity.SelectedValue.Equals(string.Empty))
            LoadNeighborhood(Convert.ToInt16(ddlCity.SelectedValue));
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        User user = (User) Session["user"];
        user.Name = txtName.Text.Trim();
        user.MiddleName = txtMiddle.Text.Trim();
        user.LastName = txtLast.Text.Trim();
        user.EMail = txtEmail.Text.Trim();
        user.Password = txtPass.Text.Trim();
        user.Address1 = txtAddress1.Text.Trim();
        user.Address2 = txtAddress2.Text.Trim();
        user.ZipCode = txtZip.Text.Trim();

        user.Province = new Province();
        user.Province.Id = Convert.ToInt16(ddlProvince.SelectedValue);

        user.City = new City();
        user.City.Id = Convert.ToInt16(ddlCity.SelectedValue);

        user.Neighborhood = new Neighborhood();
        user.Neighborhood.Id = Convert.ToInt16(ddlNeighborhood.SelectedValue);

        user.SaveProfile();

        lblError.Text = "Your changes were applied successfully.";
    }
}