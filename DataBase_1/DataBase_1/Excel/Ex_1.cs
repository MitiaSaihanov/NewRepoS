using System;
using System.Windows.Forms;

namespace DataBase_1.Excel2
{
    public partial class Ex_1 : Form
    {
        private readonly MsExel ms = new MsExel();

        public Ex_1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            ms.createTableExel1();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            // new System.NotImplementedException();
            ms.createTableExel2();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            ms.createTableExel3(Convert.ToDateTime(textBox1.Text), Convert.ToDateTime(textBox2.Text));
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            ms.createTableExel4();
        }
    }
}