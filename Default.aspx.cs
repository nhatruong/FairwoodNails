using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Bind_PageControls();
        Bind_SlideShow();
    }
    private void Bind_PageControls()
    {
        using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
        {
            var p = (from p1 in db.Homepages
                     where p1.homePageID == 1
                     select p1).Single();
            aboutLbl.Text = p.about;
            streetNumberandNameLtl.Text = p.streetNumberandName;
            cityLtl.Text = p.cityName;
            stateLtl.Text = p.stateName;
            zipCodeLtl.Text = p.zipcode;
            phoneLtl.Text = p.phoneNumber;
            modayFridayHourLbl.Text = p.mfopenHour + " " + " - " + " " + p.mfcloseHour;
            saturdayHourLbl.Text = p.saturdayopenHour + " " + "-" + p.saturdayopenHour;
            sundayHourLbl.Text = p.sundayopenHour + " " + "-" + p.sundaycloseHour;
        }

       
    }
    private void Bind_SlideShow()
    {
        using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
        {
               List<MyImage> photoList = new List<MyImage>();
               var photo = from ph in db.MyImages
                           select ph;
               foreach(var p in photo)
               {
                   photoList.Add(p);
               }
            
            slideShowRepeater.DataSource = photoList;
            slideShowRepeater.DataBind();
        }
       
    }

    // ((Label)e.Item.FindControl("RatingLabel")).Text
    protected void slideShowRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        ((Label)e.Item.FindControl("titleLbl")).Text= string.Compare(((MyImage)e.Item.DataItem).Title, "No Data", true) == 0 ? "" : ((MyImage)e.Item.DataItem).Title;
        ((Label)e.Item.FindControl("imageDescriptionLbl")).Text = string.Compare(((MyImage)e.Item.DataItem).ImageDescription, "No Data", true) == 0 ? "" : ((MyImage)e.Item.DataItem).ImageDescription;
    }
}