using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;

                GuestResponse final = new GuestResponse(name.Text,
               email.Text, phone.Text, russia.Text, math.Text, chem.Text);


               
               try
            {
                SampleContext context = new SampleContext();
                context.GuestResponses.Add(final);
                context.SaveChanges();
            }
            catch (Exception ex)
            {
                Response.Write("Ошибка " + ex.Message);
            }

            }
            


        }
    }
}