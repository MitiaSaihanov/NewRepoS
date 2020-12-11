using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class DrawingInsertForm : Form
    {
        private readonly DB dataBase;

        public DrawingInsertForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void DrawingInsertForm_Load(object sender, EventArgs e)
        {
            comboBox2.DataSource = dataBase.GetDataTable("call GetIncumbentName()");
            comboBox2.DisplayMember = "name";
            comboBox2.ValueMember = "id";
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
            var indexChk = Convert.ToInt32(comboBox2.SelectedValue.ToString());
            var indexCr = Convert.ToInt32(comboBox3.SelectedValue.ToString());
            var detKod = textBox1.Text;
            dataBase.drawingins(indexDet, detKod, indexChk, indexCr);
            var drawingForn = new DrawingForn();
            drawingForn.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var drawingForn = new DrawingForn();
            drawingForn.Show();
            Close();
        }
    }
}