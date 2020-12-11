using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class OperationInserForm : Form
    {
        private readonly DB dataBase;

        public OperationInserForm()
        {
            dataBase = DB.GetDB();
            InitializeComponent();
        }

        private void OperationInserForm_Load(object sender, EventArgs e)
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
            dataBase.operationins(indexW, indext, textBox1.Text, Convert.ToInt32(textBox2.Text),
                Convert.ToInt32(textBox3.Text));
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