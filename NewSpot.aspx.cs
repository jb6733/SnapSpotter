using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SnapSpotterModel;

public partial class NewSpot : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EntityDataSource1_Inserted(object sender, EntityDataSourceChangedEventArgs e)
    {
      if (e.Entity != null)
      {
        Spot mySpot = (Spot)e.Entity;
        Response.Redirect(string.Format("ManageSpot.aspx?SpotId={0}", mySpot.RowID.ToString()));
      }
    }
}