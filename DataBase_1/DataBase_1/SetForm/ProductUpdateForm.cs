using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.SelectForm;

namespace DataBase_1.SetForm
{
    public partial class ProductUpdateForm : Form
    {
        private int _exNumber;
        private readonly int _id;
        private string _incName;
        private string _operName;
        private readonly string _startDate;
        private readonly DB dataBase;

        public ProductUpdateForm(int id, string operName, int exNumber, string incName, string startDate)
        {
            _id = id;
            _operName = operName;
            _exNumber = exNumber;
            _incName = incName;
            _startDate = startDate;
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void ProductUpdateForm_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = dataBase.GetDataTable("call GetOperationName()");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            comboBox3.DataSource = dataBase.GetDataTable("call GetIncumbentName()");
            comboBox3.DisplayMember = "name";
            comboBox3.ValueMember = "id";
            comboBox2.DataSource = dataBase.GetDataTable("select exampleProduct_id as id FROM exampleproduct");
            comboBox2.DisplayMember = "id";
            comboBox2.ValueMember = "id";
            textBox1.Text = _startDate;
            label6.Text = _id.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var indexW = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var indext = Convert.ToInt32(comboBox3.SelectedValue.ToString());
            dataBase.ProductUpd(indexW, indext, textBox1.Text, Convert.ToInt32(comboBox2.Text), _id);
            var brak = new ProductionForm();
            brak.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new ProductionForm();
            brak.Show();
            Close();
        }
    }
}