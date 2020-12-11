using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.Requests
{
    public partial class CountOperationsSortDate : Form
    {
        private DB data;

        public CountOperationsSortDate()
        {
            InitializeComponent();
        }

        private void CountOperationsSortDate_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call CountOperationsSortDate()");
            dataGridView1.DataSource = bindingSource1;
        }
    }
}