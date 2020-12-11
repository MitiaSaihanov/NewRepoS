using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.Requests
{
    public partial class TotalTime : Form
    {
        private DB data;

        public TotalTime()
        {
            InitializeComponent();
        }

        private void TotalTime_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            comboBox1.DataSource = data.GetDataTable("call GetDetailName()");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            dataGridView1.DataSource = bindingSource1;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            bindingSource1.DataSource = data.req1((int) comboBox1.SelectedValue);
        }
    }
}