using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class BrakUpdateForm : Form
    {
        private int brak_id;
        private readonly DB dataBase;
        private int exeplNumber;
        private string incName;

        public BrakUpdateForm()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }

        private void BrakUpdateForm_Load(object sender, EventArgs e)
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
            dataBase.brakupdate(brak_id, indexInc, indexEx);
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

        public void SetBrakElement(int brak_id, string incName, int exNumber)
        {
            this.brak_id = brak_id;
            label4.Text = Convert.ToString(brak_id);
            this.incName = incName;
            exeplNumber = exNumber;
            var index = comboBox1.FindString(incName);
            comboBox1.SelectedIndex = index;
            index = comboBox2.FindString(Convert.ToString(exNumber));
            comboBox2.SelectedIndex = index;
        }
    }
}