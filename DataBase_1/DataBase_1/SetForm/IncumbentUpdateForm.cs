using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class IncumbentUpdateForm : Form
    {
        private readonly DB dataBase;
        private DateTime incumbentBirthday;
        private DateTime incumbentEmployment_date;
        private string incumbentFamilyName;
        private int incumbentId;
        private string incumbentLastName;
        private string incumbentSurnName = null;
        private string work_positionId;
        private string workplaceId;

        public IncumbentUpdateForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void IncumbentUpdateForm_Load(object sender, EventArgs e)
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
            dataBase.incumbentupdate(Convert.ToInt32(label9.Text), textBox3.Text, textBox2.Text, textBox1.Text,
                dateTimePicker1.Value, dateTimePicker2.Value, work_p, workplace);
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

        public void SetDrawingElement(int incumbentId, string incumbentFamilyName, string incumbentLastName,
            string incumbentSurnName, DateTime incumbentBirthday, DateTime incumbentEmployment_date,
            string work_positionId, string workplaceId)
        {
            this.incumbentId = incumbentId;
            this.incumbentFamilyName = incumbentFamilyName;
            this.incumbentLastName = incumbentLastName;
            this.incumbentLastName = incumbentLastName;
            this.incumbentBirthday = incumbentBirthday;
            this.incumbentEmployment_date = incumbentEmployment_date;
            this.work_positionId = work_positionId;
            this.workplaceId = workplaceId;
            label9.Text = Convert.ToString(incumbentId);
            textBox3.Text = incumbentFamilyName;
            textBox2.Text = incumbentLastName;
            textBox1.Text = incumbentSurnName;
            dateTimePicker2.Value = incumbentBirthday;
            dateTimePicker1.Value = incumbentEmployment_date;
            var index = comboBox1.FindString(Convert.ToString(work_positionId));
            comboBox1.SelectedIndex = index;
            index = comboBox1.FindString(Convert.ToString(workplaceId));
            comboBox3.SelectedIndex = index;
        }
    }
}