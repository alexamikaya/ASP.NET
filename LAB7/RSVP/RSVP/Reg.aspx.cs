﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.Entity;


namespace RSVP
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;
            
                GuestResponse rsvp = new GuestResponse(name.Text, email.Text, phone.Text, CheckBoxYN.Checked);
                ResponseRepository.GetRepository().AddResponse(rsvp);
                if(rsvp.WillAttend.HasValue && rsvp.WillAttend.Value)
                {
                    Response.Redirect("seeyouthere.html");
                } else
                {
                    Response.Redirect("sorryyoucantcome.html");
                }
                if (CheckBoxYN.Checked)
                {
                    Report report1 = new Report(TextBoxTitle.Text, TextBoxTextAnnot.Text);
                    rsvp.Reports.Add(report1);
                }
                if (TextBoxTitle2.Text != "" || TextBoxTextAnnot2.Text != "")
                {
                    Report report2 = new Report(TextBoxTitle2.Text,
                   TextBoxTextAnnot2.Text);
                    rsvp.Reports.Add(report2);
                }
                try
                {
                    SampleContext context = new SampleContext();
                    context.GuestResponses.Add(rsvp);
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