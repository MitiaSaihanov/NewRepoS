using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class IncumbentInsertForm : Form
    {
        private readonly DB dataBase;

        public IncumbentInsertForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void IncumbentInsertForm_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource =
                dataBase.GetDataTable(
                    "select w.work_position_id as id, w.work_position_name as name from work_position as w");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            comboBox3.DataSource =
                dataBase.GetDataTable("select w.workplace_id as id,w.workplace_name as name from workplace as w");
            comboBox3.DisplayMember = "name";
            comboBox3.ValueMember = "id";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var work_p = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var workplace = Convert.ToInt32(comboBox3.SelectedValue.ToString());
            dataBase.incumbentins(textBox3.Text, textBox2.Text, textBox1.Text, dateTimePicker1.Value,
                dateTimePicker2.Value, work_p, workplace);
            var drawingForn = new IncumbentForm();
            drawingForn.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var drawingForn = new IncumbentForm();
            drawingForn.Show();
            Close();
        }
    }
}