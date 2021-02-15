using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HealthCareSoln
{
    public partial class _Default : Page
    {
        public string data = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            var table = new DataTable();
            table.Columns.Add("Category");
            table.Columns.Add("Time");
            table.Columns.Add("Id");
            table.Columns.Add("PatientName");
            table.Columns.Add("Room");
            table.Columns.Add("Phone");
            table.Rows.Add("Appointment", "12:30am", "#89328731", "Smith", "200", "+1 8459 67558");
            table.Rows.Add("Appointment", "12:40am", "#89325611", "Jonas", "300", "+1 56532 5558");
            table.Rows.Add("Appointment", "12:50am", "#89355731", "Martha", "210", "+1 85454 67558");
            table.Rows.Add("Appointment", "12:12am", "#84656731", "Potter", "202", "+1 84913 67558");
            table.Rows.Add("Appointment", "12:37am", "#84648731", "Vanesa", "203", "+1 561468 67558");


            table.Rows.Add("CheckedIn", "12mins", "#89328731", "Smith", "98", "+1 54132 67558");
            table.Rows.Add("CheckedIn", "14mins", "#95656411", "Clara", "82", "+1 23556 51558");
            table.Rows.Add("CheckedIn", "17mins", "#65464445", "Sansa", "86", "+1 85454 98582");


            table.Rows.Add("Visited", "12:30am to 12:40am", "#85235651", "Stark", "200", "+1 8459 67558");
            table.Rows.Add("Visited", "12:40am to 12:50am", "#56465466", "Drogo", "300", "+1 56532 5558");
            table.Rows.Add("Visited", "12:50am to 1:00pm", "#51354513", "Cersei", "210", "+1 85454 67558");


            RepeaterApp.DataSource = table.AsEnumerable().Where(i => i.Field<string>("Category") == "Appointment").OrderBy(i=> i.Field<string>("Time")).CopyToDataTable();
            RepeaterApp.DataBind();

            RepeaterPatient.DataSource = table.AsEnumerable().Where(i => i.Field<string>("Category") == "CheckedIn").OrderBy(i => i.Field<string>("PatientName")).CopyToDataTable();
            RepeaterPatient.DataBind();

            RepeaterVisited.DataSource = table.AsEnumerable().Where(i => i.Field<string>("Category") == "Visited").OrderBy(i => i.Field<string>("Time")).CopyToDataTable();
            RepeaterVisited.DataBind();

            Console.WriteLine(table);
        }
    }
}