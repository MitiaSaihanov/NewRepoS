using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class BrakInsertForm : Form
    {
        private readonly DB dataBase;

        public BrakInsertForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void BrakInsertForm_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = dataBase.GetDataTable("call GetIncumbentName()");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            comboBox2.DataSource = dataBase.GetDataTable("select exampleProduct_id as ex from exampleProduct");
            comboBox2.DisplayMember = "ex";
            comboBox2.ValueMember = "ex";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var indexInc = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var indexEx = Convert.ToInt32(comboBox2.SelectedValue.ToString());
            dataBase.brakins(indexInc, indexEx);
            var brak = new BrakForm();
            brak.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new BrakForm();
            brak.Show();
            Close();
        }
    }
}