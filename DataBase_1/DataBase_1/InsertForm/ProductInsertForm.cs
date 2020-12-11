using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.SelectForm;

namespace DataBase_1.InsertForm
{
    public partial class ProductInsertForm : Form
    {
        private readonly DB dataBase;

        public ProductInsertForm()
        {
            dataBase = DB.GetDB();
            InitializeComponent();
        }


        private void button2_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ProductInsertForm_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = dataBase.GetDataTable("call GetOperationName()");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
            comboBox3.DataSource = dataBase.GetDataTable("call GetIncumbentName()");
            comboBox3.DisplayMember = "name";
            comboBox3.ValueMember = "id";
            comboBox2.DataSource = dataBase.GetDataTable("select ex.exampleProduct_id as id FROM exampleproduct");
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            var indexW = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var indext = Convert.ToInt32(comboBox3.SelectedValue.ToString());
            dataBase.Productins(indexW, indext, textBox1.Text, Convert.ToInt32(comboBox2.Text));
            var brak = new ProductionForm();
            brak.Show();
            Close();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            var brak = new ProductionForm();
            brak.Show();
            Close();
        }
    }
}