using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class OperationsUpdateForm : Form
    {
        private readonly string _detName;
        private readonly int _id;
        private readonly string _machName;
        private readonly string _name;
        private readonly int _number;
        private readonly int _time;
        private readonly DB dataBase;

        public OperationsUpdateForm(int id, string detName, string machName, string name, int time, int number)
        {
            _id = id;
            _detName = detName;
            _machName = machName;
            _name = name;
            _time = time;
            _number = number;
            dataBase = DB.GetDB();
            InitializeComponent();
            setData();
        }

        private void setData()
        {
            label6.Text = _id.ToString();
            comboBox1.Text = _detName;
            comboBox2.Text = _machName;
            textBox1.Text = _name;
            textBox2.Text = _time.ToString();
            textBox3.Text = _number.ToString();
        }

        private void OperationsInsertForm_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = dataBase.GetDataTable("call GetDetailName()");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            comboBox2.DataSource = dataBase.GetDataTable("call GetMachineName()");
            comboBox2.DisplayMember = "name";
            comboBox2.ValueMember = "id";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var indexW = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var indext = Convert.ToInt32(comboBox2.SelectedValue.ToString());
            dataBase.operationupd(indexW, indext, textBox2.Text, Convert.ToInt32(textBox2.Text),
                Convert.ToInt32(textBox3.Text), _id);
            var brak = new OperationForm();
            brak.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new OperationForm();
            brak.Show();
            Close();
        }
    }
}