using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       // Bind_Gridview();
        
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
            GridView1.DataSource = imageList;
            GridView1.DataBind();
        }
    }
    
    public byte[] imageToByteArray(System.Drawing.Image imageIn)
    {
        MemoryStream ms = new MemoryStream();
        imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
        return ms.ToArray();
    }


    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        /* public byte[] imageToByteArray(System.Drawing.Image imageIn)
     {
         MemoryStream ms = new MemoryStream();
         imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
         return ms.ToArray();
     }*/
        //   string strPath = MapPath("~/myimage/") + Path.GetFileName(e.FileName);
        // AjaxFileUpload1.SaveAs(strPath);
        // MemoryStream ms = new MemoryStream();
        // Getting the File Name 
        string filename = e.FileName;

        // Setting the path to upload Images

        AjaxFileUpload1.SaveAs(Server.MapPath("MyImage/") + filename);
        
        // Storing the relative path to store into images
        string Imagepath = "~/MyImage/" + filename;

        List<MyImage> imageList= new List<MyImage>();
        using (FairwoodNails_CMSEntities db = new FairwoodNails_CMSEntities())
        {
            //Image image1 = Image.
            var img = new MyImage() { FileName = Imagepath };
            db.Entry(img).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();
        }
       // Bind_Gridview();
    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "postback";
        Bind_Gridview();
      
    }
}