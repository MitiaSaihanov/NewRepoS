using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class DrawingUpdateForm : Form
    {
        private string chInc;
        private string crIncr;
        private readonly DB dataBase;
        private string detName;
        private string drawing_kod;
        private int id;

        public DrawingUpdateForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void DrawingUpdateForm_Load(object sender, EventArgs e)
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
            var detId = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var incCk = Convert.ToInt32(comboBox2.SelectedValue.ToString());
            var incCr = Convert.ToInt32(comboBox3.SelectedValue.ToString());
            var drKod = textBox1.Text;
            dataBase.drawingupdate(Convert.ToInt32(label6.Text), detId, drKod, incCk, incCr);
            var brak = new DrawingForn();
            brak.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new DrawingForn();
            brak.Show();
            Close();
        }

        public void SetDrawingElement(int id, string detName, string drawing_kod, string chInc, string crIncr)
        {
            this.id = id;
            label6.Text = Convert.ToString(id);

            this.detName = detName;
            this.drawing_kod = drawing_kod;
            this.chInc = chInc;
            this.crIncr = crIncr;
            textBox1.Text = drawing_kod;
            var index = comboBox1.FindString(detName);
            comboBox1.SelectedIndex = index;
            index = comboBox2.FindString(Convert.ToString(chInc));
            comboBox2.SelectedIndex = index;
            index = comboBox3.FindString(Convert.ToString(crIncr));
            comboBox3.SelectedIndex = index;
        }
    }
}