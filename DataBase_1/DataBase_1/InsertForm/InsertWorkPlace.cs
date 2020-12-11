using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class InsertWorkPlace : Form
    {
        private readonly DB dataBase;

        public InsertWorkPlace()
        {
            dataBase = DB.GetDB();
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataBase.wplins(textBox2.Text);
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
    }
}