using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class WorkPositionForm : Form
    {
        private DB data;

        public WorkPositionForm()
        {
            InitializeComponent();
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.typeselect();
            dataGridView1.DataSource = bindingSource1;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.typeselect();
            dataGridView1.DataSource = bindingSource1;
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            var brak = new InsertWorkPositionForm();
            brak.Show();
            Hide();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            data.brakdelet(id);
        }


        private void toolStripButtonSet_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var incName = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var brak = new SetWorkPositionForm(id, incName);
            brak.Show();
            Hide();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.wposDelite(id);
        }

        
    }
}