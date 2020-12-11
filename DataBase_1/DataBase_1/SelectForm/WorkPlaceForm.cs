using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class WorkPlaceForm : Form
    {
        private readonly DB data;

        public WorkPlaceForm()
        {
            InitializeComponent();
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("SELECT * FROM workplace");
            dataGridView1.DataSource = bindingSource1;
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            var brak = new InsertWorkPlace();
            brak.Show();
            Hide();
        }

        private void toolStripButtonSet_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var incName = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var brak = new WorkPlaceUpdate(id, incName);
            brak.Show();
            Hide();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.wplDelite(id);
        }
    }
}