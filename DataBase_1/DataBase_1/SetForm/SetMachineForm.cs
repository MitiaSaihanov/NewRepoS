using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class SetMachineForm : Form
    {
        private readonly int _inv;
        private readonly string _name;
        private readonly string _tid;
        private readonly string _wid;
        private readonly DB dataBase;
        private readonly int id;

        public SetMachineForm(int id, string wid, string tid, int inv, string name)
        {
            this.id = id;
            _wid = wid;
            _tid = tid;
            _inv = inv;
            _name = name;
            dataBase = DB.GetDB();
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var indexW = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var indext = Convert.ToInt32(comboBox2.SelectedValue.ToString());
            dataBase.mashupd(id, indexW, indext, textBox2.Text, Convert.ToInt32(textBox1.Text));
            var brak = new MachineForm();
            brak.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new MachineForm();
            brak.Show();
            Close();
        }

        private void SetMachineForm_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = dataBase.GetDataTable("call GetWorckplaceName()");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            comboBox1.Text = _wid;
            comboBox2.DataSource = dataBase.GetDataTable("call GetTypeName()");
            comboBox2.DisplayMember = "name";
            comboBox2.ValueMember = "id";
            comboBox2.Text = _tid;
            textBox1.Text = _inv.ToString();
            textBox2.Text = _name;
            label6.Text = id.ToString();
        }
    }
}