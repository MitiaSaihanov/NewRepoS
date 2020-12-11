using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class SetTypeForm : Form
    {
        private readonly DB dataBase;
        private readonly int id;
        private readonly string name;

        public SetTypeForm(int id, string name)
        {
            this.id = id;
            this.name = name;
            dataBase = DB.GetDB();
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataBase.typeupd(id, textBox2.Text);
            var brak = new TypeForm();
            brak.Show();
            Close();
        }

        private void SetTypeForm_Load(object sender, EventArgs e)
        {
            textBox2.Text = name;
            label6.Text = id.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var brak = new TypeForm();
            brak.Show();
            Close();
        }
    }
}