﻿using System;
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


        private void button3_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            ms.createTableExel3(string.Format("{0:yyyy-MM-dd}", dateTimePicker2.Value), string.Format("{0:yyyy-MM-dd}", dateTimePicker1.Value));
            this.Close();
        }

        private void Ex_1_Load(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}