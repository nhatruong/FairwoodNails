using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CMS_CMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
            {
                var ab = (from a in db.Homepages
                          where a.homePageID == 1
                          select a).Single();
                aboutTxt.Text = ab.about ?? "empty";
                streetNumberandNameTxt.Text = ab.streetNumberandName ?? "empty";
                cityTxt.Text = ab.cityName ?? "empty";
                stateTxt.Text = ab.stateName ?? "empty";
                zipCodeTxt.Text = ab.zipcode ?? "empty";
                phoneTxt.Text = ab.phoneNumber ?? "empty";
            }
        }
       
    }


    protected void submitBtn_Click(object sender, EventArgs e)
    {
        using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
        {
            var hp = new Homepage()
            {
                homePageID = 1,
                about = aboutTxt.Text,
                streetNumberandName = streetNumberandNameTxt.Text,
                cityName = cityTxt.Text,
                stateName = stateTxt.Text,
                zipcode = zipCodeTxt.Text,
                phoneNumber = phoneTxt.Text,
                mfopenHour = mondayFridayOpenHourDDL.SelectedValue,
                mfcloseHour = mondayFridayCloseHourDDL.SelectedValue,
                saturdayopenHour=saturdayOpenHourDDL.SelectedValue,
                saturdaycloseHour=saturdayCloseHourDDL.SelectedValue,
                sundayopenHour=sundayOpenHourDDL.SelectedValue,
                sundaycloseHour=sundayCloseHourDDL.SelectedValue
            };
            //  db.Homepages.Add(hp);
            db.Entry(hp).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}

    
