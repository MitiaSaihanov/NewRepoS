using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class ExProductInsertForm : Form
    {
        private readonly DB dataBase;

        public ExProductInsertForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void ExProductInsertFormForm_Load(object sender, EventArgs e)
        {
            comboBox3.DataSource = dataBase.GetDataTable("call GetIncumbentName()");
            comboBox3.DisplayMember = "name";
            comboBox3.ValueMember = "id";
            comboBox1.DataSource =
                dataBase.GetDataTable("select d.detail_name as name,d.detail_id as id from detail as d");
            comboBox1.DisplayMember = "name";
            comboBox1.ValueMember = "id";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var indexDet = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var indexCr = Convert.ToInt32(comboBox3.SelectedValue.ToString());
            dataBase.exampleproductins(indexDet, indexCr);
            var drawingForn = new ExProductSelect();
            drawingForn.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var drawingForn = new ExProductSelect();
            drawingForn.Show();
            Close();
        }
    }
}