using System;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class TypeInsertForm : Form
    {
        private readonly DB dataBase;

        public TypeInsertForm()
        {
            dataBase = DB.GetDB();
            InitializeComponent();
        }


        private void button1_Click_1(object sender, EventArgs e)
        {
            dataBase.typeins(textBox2.Text);
            var brak = new WorkPositionForm();
            brak.Show();
            Close();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            var brak = new WorkPositionForm();
            brak.Show();
            Close();
        }
    }
}