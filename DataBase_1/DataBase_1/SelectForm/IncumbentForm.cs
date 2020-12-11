using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;

namespace DataBase_1
{
    public partial class IncumbentForm : Form
    {
        private DB data;

        public IncumbentForm()
        {
            InitializeComponent();
        }

        private void IncumbentForm_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call incumbentselect()");
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
            var detail = new IncumbentInsertForm();
            detail.Show();
            Hide();
        }

        private void toolStripSetButton_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var fn = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var ln = (string) dataGridView1[2, dataGridView1.CurrentRow.Index].Value;
            var sn = (string) dataGridView1[3, dataGridView1.CurrentRow.Index].Value;
            var b = (DateTime) dataGridView1[4, dataGridView1.CurrentRow.Index].Value;
            var ed = (DateTime) dataGridView1[5, dataGridView1.CurrentRow.Index].Value;
            var wpn = (string) dataGridView1[6, dataGridView1.CurrentRow.Index].Value;
            var wn = (string) dataGridView1[7, dataGridView1.CurrentRow.Index].Value;
            var drawing = new IncumbentUpdateForm();
            drawing.SetDrawingElement(id, fn, ln, sn, b, ed, wpn, wn);
            drawing.Show();
            Hide();
        }
    }
}