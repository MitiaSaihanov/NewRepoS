using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class OperationForm : Form
    {
        private DB data;

        public OperationForm()
        {
            InitializeComponent();
        }

        private void OperationForm_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.Operatonsselect();
            dataGridView1.DataSource = bindingSource1;
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            var brak = new OperationInserForm();
            brak.Show();
            Hide();
        }

        private void toolStripButtonSet_Click(object sender, EventArgs e)
        {
            var ind = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var wind = (string) dataGridView1[4, dataGridView1.CurrentRow.Index].Value;
            var inv = (int) dataGridView1[2, dataGridView1.CurrentRow.Index].Value;
            var name = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var tid = (string) dataGridView1[5, dataGridView1.CurrentRow.Index].Value;
            var numb = (int) dataGridView1[3, dataGridView1.CurrentRow.Index].Value;
            var brak = new OperationsUpdateForm(ind, wind, tid, name, inv, numb);
            brak.Show();
            Hide();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.OperationDelite(id);
        }
    }
}