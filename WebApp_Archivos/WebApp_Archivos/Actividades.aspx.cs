using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Usar archivis
using System.IO;

namespace WebApp_Archivos
{
    public partial class Actividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fecha = calendarAgend.TodaysDate.Day.ToString() +
               calendarAgend.TodaysDate.Month.ToString() +
               calendarAgend.TodaysDate.Year.ToString();
            if (File.Exists(Server.MapPath(".") + "/" + fecha))
            {
                StreamReader arch = new StreamReader(Server.MapPath(".") + "/" + fecha);
                txtCalendar.Text = arch.ReadToEnd();
                arch.Close();
            }
        }

        protected void calendarAgend_SelectionChanged(object sender, EventArgs e)
        {
            string fecha = calendarAgend.SelectedDate.Day.ToString() +
               calendarAgend.SelectedDate.Month.ToString() +
               calendarAgend.SelectedDate.Year.ToString();
            if (File.Exists(Server.MapPath(".") + "/" + fecha))
            {
                StreamReader arch = new StreamReader(Server.MapPath(".") + "/" + fecha);
                txtCalendar.Text = arch.ReadToEnd();
                arch.Close();
            }
            else
                txtCalendar.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string fecha = calendarAgend.SelectedDate.Day.ToString() +
                      calendarAgend.SelectedDate.Month.ToString() +
                      calendarAgend.SelectedDate.Year.ToString();
            StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/" + fecha, true);
            arch.WriteLine(txtCalendar.Text);
            arch.Close();
        }
    }
}