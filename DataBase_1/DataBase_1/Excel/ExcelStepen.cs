﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DataBase_1.Excel
{
    public partial class ExcelStepen : Form
    {
        private readonly MsExel ms = new MsExel();
        public ExcelStepen()
        {
            InitializeComponent();
        }

        private void ExcelStepen_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            ms.createTableExel2();
            this.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
