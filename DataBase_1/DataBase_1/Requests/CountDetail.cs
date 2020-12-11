using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.Requests
{
    public partial class CountDetail : Form
    {
        private DB data;

        public CountDetail()
        {
            InitializeComponent();
        }

        private void CountDetail_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call CountDetail()");
            dataGridView1.DataSource = bindingSource1;
        }
    }
}