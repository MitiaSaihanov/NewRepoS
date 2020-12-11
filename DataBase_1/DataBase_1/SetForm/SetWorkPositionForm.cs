using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class SetWorkPositionForm : Form
    {
        private readonly DB dataBase;
        private readonly int id;
        private readonly string name;

        public SetWorkPositionForm(int id, string name)
        {
            this.id = id;
            this.name = name;
            dataBase = DB.GetDB();
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataBase.wpupd(id, textBox2.Text);
            var brak = new WorkPositionForm();
            brak.Show();
            Close();
        }


        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new WorkPositionForm();
            brak.Show();
            Close();
        }

        private void SetWorkPositionForm_Load(object sender, EventArgs e)
        {
            textBox2.Text = name;
            label6.Text = id.ToString();
        }
    }
}