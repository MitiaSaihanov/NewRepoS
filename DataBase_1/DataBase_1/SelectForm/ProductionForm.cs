using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1.SelectForm
{
    public partial class ProductionForm : Form
    {
        private DB data;

        public ProductionForm()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            var brak = new ProductInsertForm();
            brak.Show();
            Hide();
        }

        private void toolStripButtonSet_Click(object sender, EventArgs e)
        {
            var ind = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var wind = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var name = (string) dataGridView1[5, dataGridView1.CurrentRow.Index].Value;

            var tid = (int) dataGridView1[2, dataGridView1.CurrentRow.Index].Value;
            var numb = dataGridView1[3, dataGridView1.CurrentRow.Index].Value.ToString();
            var brak = new ProductUpdateForm(ind, wind, tid, name, numb);
            brak.Show();
            Hide();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void ProductionForm_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.Productselect();
            dataGridView1.DataSource = bindingSource1;
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.ProductionDelite(id);
        }
    }
}