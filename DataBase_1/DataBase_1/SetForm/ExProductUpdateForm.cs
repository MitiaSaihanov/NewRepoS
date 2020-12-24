using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class ExProductUpdateForm : Form
    {
        private string crIncr;
        private readonly DB dataBase;
        private string detName;
        private int id;

        public ExProductUpdateForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void ExProductUpdateForm_Load(object sender, EventArgs e)
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
            var detId = Convert.ToInt32(comboBox1.SelectedValue.ToString());
            var incCk = Convert.ToInt32(comboBox3.SelectedValue.ToString());
            dataBase.exproductupdate(detId, incCk, Convert.ToInt32(label4.Text));
            var brak = new ExProductSelect();
            brak.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new ExProductSelect();
            brak.Show();
            Close();
        }

        public void SetDrawingElement(int id, string detName, string crIncr)
        {
            this.id = id;
            label4.Text = Convert.ToString(id);
            this.detName = detName;
            this.crIncr = crIncr;
            var index = comboBox1.FindString(detName);
            comboBox1.SelectedIndex = index;
            index = comboBox3.FindString(Convert.ToString(crIncr));
            comboBox3.SelectedIndex = index;
        }
    }
}