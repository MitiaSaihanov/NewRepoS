using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.Requests
{
    public partial class CountOperationsSortName : Form
    {
        private DB data;

        public CountOperationsSortName()
        {
            InitializeComponent();
        }

        private void CountOperationsSortName_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call CountOperationsSortName()");
            dataGridView1.DataSource = bindingSource1;
        }
    }
}