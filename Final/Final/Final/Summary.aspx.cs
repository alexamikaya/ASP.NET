using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Final
{
    public partial class Summary : System.Web.UI.Page
    {
        protected string GetNoShowHtml()
        {
            StringBuilder html = new StringBuilder();
            var noData = ResponseRepository.GetRepository()
            .GetAllResponses();
            foreach (var final in noData)
            {

                html.Append(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td>",
 final.StudentName, final.StudentEmail, final.StudentPhone, final.StudentRussia, final.StudentMath, final.StudentChem, final.Rdata));
            }
            return html.ToString();
        }
    }

}
