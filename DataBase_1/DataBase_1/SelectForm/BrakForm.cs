using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class BrakForm : Form
    {
        private DB data;

        public BrakForm()
        {
            InitializeComponent();
        }

        private void BrakForm_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.brakselect();
            dataGridView1.DataSource = bindingSource1;
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.brakdelet(id);
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            var brak = new BrakInsertForm();
            brak.Show();
            Hide();
        }

        private void toolStripButtonSet_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var incName = (string) dataGridView1[2, dataGridView1.CurrentRow.Index].Value;
            var exNumber = (int) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var brak = new BrakUpdateForm();
            brak.Show();
            Hide();
            brak.SetBrakElement(id, incName, exNumber);
        }
    }
}