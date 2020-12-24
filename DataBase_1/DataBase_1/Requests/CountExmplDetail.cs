using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.Requests
{
    public partial class CountExmplDetail : Form
    {
        private DB data;

        public CountExmplDetail()
        {
            InitializeComponent();
        }

        private void CountExmplDetail_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call CountExmplDetail()");
            dataGridView1.DataSource = bindingSource1;
            dataGridView1.Columns[0].HeaderText = "Название детали";
            dataGridView1.Columns[1].HeaderText = "Число чертежей";
            dataGridView1.Columns[2].HeaderText = "Количество деталей";
        }
    }
}