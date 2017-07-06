using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Mavtozavr.Extensions;
using System.Data.Entity;

namespace Mavtozavr
{
    public partial class Form1 : Form
    {
        ListModelContainer db;
        public Form1()
        {
            InitializeComponent();
            db = new ListModelContainer();
            //db.Cities.Load();
            //dgvTable.DataSource = db.Cities.Local.ToBindingList();
        }
        
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //Orgs org = new Orgs { Name = "Ком-Тех" };
            //db.Orgs.Add(org);
            //Cities city = new Cities { Name = "Челябинск" };
            //db.Cities.Add(city);
            //db.SaveChanges();
            Cities city = db.Cities.
                Where(c => c.Name == "Челябинск").
                FirstOrDefault();
            Orgs org = db.Orgs.
                Where(o => o.Name == "Ком-Тех").
                FirstOrDefault();
            TraidPoints tp = new TraidPoints
            {
                City = city,
                Org = org,
                Address = "Бугурусланская 64",
                Kpp = "1111",
                TraidPointType = (int)TraidPointsTypes.Shop,
                Egais = "000",
                UTMVersion = "1",
                GOSTDate = "2",
                PKIDate = "3",
                POSVersion = "4",
                SyncTime = "5",
                POSid = "6",
            };
            db.TraidPoints.Add(tp);
            db.SaveChanges();
        }
    }
}
