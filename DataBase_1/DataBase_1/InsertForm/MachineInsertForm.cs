using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class MachineInsertForm : Form
    {
        private readonly DB dataBase;

        public MachineInsertForm()
        {
            dataBase = DB.GetDB();
            InitializeComponent();
        }


        private void MachineInsertForm_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = dataBase.GetDataTable("call GetWorckplaceName()");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            comboBox2.DataSource = dataBase.GetDataTable("call GetTypeName()");
            comboBox2.DisplayMember = "name";
            comboBox2.ValueMember = "id";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var indexW = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var indext = Convert.ToInt32(comboBox2.SelectedValue.ToString());
            dataBase.mashins(indexW, indext, textBox2.Text, Convert.ToInt32(textBox1.Text));
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

        private void label4_Click(object sender, EventArgs e)
        {
            throw new System.NotImplementedException();
        }
    }
}