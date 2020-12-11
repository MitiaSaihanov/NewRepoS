using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class ExProductSelect : Form
    {
        private DB data;

        public ExProductSelect()
        {
            InitializeComponent();
        }

        private void ExProductSelect_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call exprodselect()");
            dataGridView1.DataSource = bindingSource1;
        }

        private void bindingNavigatorDeleteItem_Click_2(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.exproductdelet(id);
        }

        private void toolStripAddButton_Click(object sender, EventArgs e)
        {
            var detail = new ExProductInsertForm();
            detail.Show();
            Hide();
        }

        private void toolStripSetButton_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var detName = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var chInc = (string) dataGridView1[2, dataGridView1.CurrentRow.Index].Value;
            var drawing = new ExProductUpdateForm();
            drawing.SetDrawingElement(id, detName, chInc);
            drawing.Show();
            Hide();
        }
    }
}