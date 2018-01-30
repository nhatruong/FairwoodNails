using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Data.Entity;
using System.Data;
using System.Data.SqlClient;

public partial class CMS_SlideShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_Gridview();
        }
        // ScriptManager.GetCurrent(this).RegisterPostBackControl(this.addBtn);
        // Page.Form.Attributes.Add("enctype", "multipart/form-data");
        /*    if(!IsPostBack){
                update_gridview();
            }
         */
    }

    //Data  bind the gridview after a new image added
 /*       protected void Page_PreRender(object sender, EventArgs e)
        {
            List<Image> listImages = new List<Image>();
            using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
            {            
                var currentSlideShow = from ss in db.Images                                  
                                       select ss;
                foreach (var imageInfo in currentSlideShow)
                {
                    Image im = new Image { Id= imageInfo.Id, FileName=imageInfo.FileName, Title = imageInfo.Title ?? "No Data", ImageDescription = imageInfo.ImageDescription ?? "No Data", Image1 = imageInfo.Image1 };
                    listImages.Add(im);
                }
                slideshowGridview.DataSource = listImages;
                slideshowGridview.DataBind();         
            } 
        } 
        */
 /*   private void update_gridview()
    {
        List<Image> listImages = new List<Image>();
        using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
        {
            var currentSlideShow = from ss in db.Images
                                   select ss;
            foreach (var imageInfo in currentSlideShow)
            {
                Image im = new Image { Id = imageInfo.Id, Title = imageInfo.Title ?? "No Data", ImageDescription = imageInfo.ImageDescription ?? "No Data", Image1 = imageInfo.Image1 };
                listImages.Add(im);
            }
            slideshowGridview.DataSource = listImages;
            slideshowGridview.DataBind();
        }
    }
 */   
 /*   protected void addBtn_Click(object sender, EventArgs e)
    {
   //     label2.Text = "inside add button " + "and title name is "+ titleTxt.Text +" and image description is " +descriptionTxt.Text 
           +" file name is " +upFile.FileName;
        //check for duplicate insertion. Also take care of page refresh by user
        bool duplicatedFileName=false;
        using (FairwoodNails_CMSEntities db= new FairwoodNails_CMSEntities())
        {
            duplicatedFileName= db.Images.Any(im => string.Compare(im.FileName, upFile.FileName, true) == 0);
            if (duplicatedFileName)
            {
                duplicateLbl.Text ="The image ("+ upFile.FileName + ") is already added. Delete it before trying to add it again";
                duplicateLbl.Visible = true;

                return;
            }
        }
        //Insert if no duplication
        if (upFile.HasFile && !duplicatedFileName)
        {
            using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
            {
                Image im = new Image()
                { Image1 = upFile.FileBytes, FileName = upFile.FileName, Title = string.IsNullOrEmpty(titleTxt.Text) ? "No Data": titleTxt.Text, ImageDescription = string.IsNullOrEmpty(descriptionTxt.Text)? "No Data":descriptionTxt.Text};
                //  db.Images.Add(im);
                db.Entry(im).State = EntityState.Added;
                db.SaveChanges();
            }
            duplicateLbl.Visible = false;
        }
      
       // update_gridview();
        
    }  */
    //Delete a row
    protected void slideshowGridview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
   /*     foreach (DictionaryEntry keyEntry in e.Keys)
        {
           int rowPrimaryKey = int.Parse(keyEntry.Value.ToString());
            using (FairwoodNails_CMSEntities fw = new FairwoodNails_CMSEntities())
            {
                var deletingRow = (from dr in fw.Images
                                   where dr.Id == rowPrimaryKey
                                   select dr).SingleOrDefault();
                if(deletingRow !=null)
                {
                    fw.Entry(deletingRow).State = System.Data.Entity.EntityState.Deleted;
                    fw.SaveChanges();
                }
                
            }
        }*/
       // update_gridview();
    }
    //Rebind gridview after deleting a row
 /*   protected void slideshowGridview_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Bind_Gridview(); 
    }
*/

    protected void slideshowGridview_RowEditing(object sender, GridViewEditEventArgs e)
    {
        slideshowGridview.EditIndex = e.NewEditIndex; Bind_Gridview();
    }

    //put gridview in normal state
    protected void slideshowGridview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        e.Cancel = true;
        slideshowGridview.EditIndex = -1;
        Bind_Gridview();
    }
/*
    protected void slideshowGridview_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = slideshowGridview.Rows[e.RowIndex]; 

        TextBox txtTitle = (TextBox)row.FindControl("titleTxt");
        TextBox txtimageDescription = (TextBox)row.FindControl("imageDescriptionTxt");
       
        int ID = Int32.Parse(slideshowGridview.DataKeys[e.RowIndex].Value.ToString());
        string title = txtTitle.Text;
        string imageDescription = txtimageDescription.Text;
   

        UpdateProduct(ID, title, imageDescription);
    }
    private void UpdateProduct(int ID, string title, string imageDescription)
    {
        try
        {
            string constr = @"Data Source = QUANGTRUONG-PC\SQL2012EXPRESS; Initial Catalog = FairwoodNailsDB; Integrated Security = True";
            string query = "UPDATE Images SET title = @title, imagedescription = @imageDescription WHERE ID = @ID";


            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);


            com.Parameters.Add("@title", SqlDbType.NVarChar).Value = title;
            com.Parameters.Add("@imageDescription", SqlDbType.NVarChar).Value = imageDescription;
            com.Parameters.Add("@ID", SqlDbType.Int).Value = ID;


            con.Open();
            com.ExecuteNonQuery();
            con.Close();


            slideshowGridview.EditIndex = -1;
           Bind_Gridview();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
*/
    protected void slideshowGridview_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        //get primray key
        int rowIndex = e.RowIndex;
        int rowPrimaryKey = Convert.ToInt32(slideshowGridview.DataKeys[rowIndex].Value.ToString());
      
   /*    foreach (DictionaryEntry keyEntry in e.Keys)
        {
            rowPrimaryKey = int.Parse(keyEntry.Value.ToString());
        }      
*/
        GridViewRow updatingRow = (GridViewRow)slideshowGridview.Rows[e.RowIndex];
      
        using(FairwoodNails_CMSEntities db= new FairwoodNails_CMSEntities())
        {
            MyImage im = new MyImage()
            {
                Id = rowPrimaryKey,
                ImageDescription = string.IsNullOrEmpty(((TextBox)(updatingRow.FindControl("imageDescriptionTxt"))).Text) ? "No Data" : ((TextBox)(updatingRow.FindControl("imageDescriptionTxt"))).Text,
                Title = string.IsNullOrEmpty(((TextBox)(updatingRow.FindControl("titleTxt"))).Text) ? "No Data" : ((TextBox)(updatingRow.FindControl("titleTxt"))).Text,
                FileName = ((Image)(updatingRow.FindControl("Image1"))).ImageUrl
            }; 
            db.Entry(im).State = EntityState.Modified;
            db.SaveChanges();
        }
        
        slideshowGridview.EditIndex = -1;
        Bind_Gridview();

        /*    if (((FileUpload)(updatingRow.FindControl("upFile"))).HasFile)
            {

                using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
                {
                    Image im = new Image()
                    { Id=rowPrimaryKey,  Image1 = ((FileUpload)(updatingRow.FindControl("upFile"))).FileBytes, FileName = ((FileUpload)(updatingRow.FindControl("upFile"))).FileName,
                        Title = string.IsNullOrEmpty(((TextBox)(updatingRow.FindControl("titleTxt"))).Text) ? "No Data" : ((TextBox)(updatingRow.FindControl("titleTxt"))).Text,
                        ImageDescription = string.IsNullOrEmpty(((TextBox)(updatingRow.FindControl("imageDescriptionTxt"))).Text) ? "No Data" : ((TextBox)(updatingRow.FindControl("imageDescriptionTxt"))).Text};
                    db.Entry(im).State = EntityState.Modified;

                    int affectedRow = db.SaveChanges();


                    //Response.Write("<script>alert('Updates is complete!')</script>");
                }
                slideshowGridview.EditIndex = -1; 
            }*/
    }

    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        // Getting the File Name 
        string filename = e.FileName;

        // Setting the path to upload Images

        AjaxFileUpload1.SaveAs(Server.MapPath("~/MyImage/") + filename);

        // get relative path and store it in db
        string Imagepath = "~/MyImage/" + filename;

       // List<Image> imageList = new List<Image>();
        using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
        {
            //Select a existing filename in the db
            var duplicateImage = (from DI in db.MyImages
                                  where string.Compare(DI.FileName,Imagepath)==0
                                  select DI).SingleOrDefault();

            //image already existed in the db, update the filename
            if (duplicateImage!=null)
            {
                duplicateImage.FileName = Imagepath;
               
            }
            //add new image
            else
            {
                var img = new MyImage() { FileName = Imagepath, ImageDescription = "No Data", Title = "No Data" };
                db.Entry(img).State = EntityState.Added;
            }           
            db.SaveChanges();
        }
    }

    private void Bind_Gridview()
    {
        using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
        {
            List<MyImage> imageList = new List<MyImage>();
            //bind gridview
            var savedImg = from SI in db.MyImages
                           select SI;

            foreach (var i in savedImg)
            {
                imageList.Add(i);
            }
            //slideshowGridview.EditIndex = -1;
            slideshowGridview.DataSource = imageList;
            slideshowGridview.DataBind();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Bind_Gridview();
    }
    //take care of delete
      protected void slideshowGridview_RowCommand(object sender, GridViewCommandEventArgs e)
      {
        string deletingFile = "";
        if (e.CommandName == "delete")
          {
            // Retrieve the row index stored in the 
            // CommandArgument property.
            int rowIndex = Convert.ToInt32(e.CommandArgument);
              //int indext =slideshowGridview.se
              // Retrieve the row that contains the button 
              // from the Rows collection.
          //   GridViewRow row = slideshowGridview.Rows[rowIndex];
           // DataRowView rowView= (DataRowView)row.DataItem; String state = rowView["state"].ToString();
           
            //ISSUE RIGHT HERE
            //string deletingFile= ((Image)row.DataItem).FileName;

            int rowPrimaryKey = Convert.ToInt32(slideshowGridview.DataKeys[rowIndex].Value.ToString());
            
              using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
              {
                  var deletingRow = (from dr in db.MyImages
                                     where dr.Id==rowPrimaryKey
                                     select dr).SingleOrDefault();
                  if (deletingRow != null)
                  {
                    deletingFile = deletingRow.FileName;
                    db.Entry(deletingRow).State = EntityState.Deleted;
                      db.SaveChanges();
                    //Delete image in local MyImage folder after deleting in the db
                      Delete_Image(deletingFile);
                }
              }
            Bind_Gridview();
        }
        
    
        
      }

    //delete photo in MyImage folder
    private void Delete_Image(string imageFile)
    {
        var f= Server.MapPath(imageFile);

        if (File.Exists(f))
        {
            File.Delete(f);
        }
    }

   
}
/*
 *  string.IsNullOrEmpty(Eval("Title").ToString())?"No Data" : 
  GridViewRow row = TaskGridView.Rows[e.RowIndex];
    dt.Rows[row.DataItemIndex]["Id"] = ((TextBox)(row.Cells[1].Controls[0])).Text;
    dt.Rows[row.DataItemIndex]["Description"] = ((TextBox)(row.Cells[2].Controls[0])).Text;
    dt.Rows[row.DataItemIndex]["IsComplete"] = ((CheckBox)(row.Cells[3].Controls[0])).Checked;


 */
