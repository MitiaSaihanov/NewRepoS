using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class MachineForm : Form
    {
        private DB data;

        public MachineForm()
        {
            InitializeComponent();
        }


        private void MachineForm_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.Machineselect();
            dataGridView1.DataSource = bindingSource1;
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            var brak = new MachineInsertForm();
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
            var ind = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var wind = (string) dataGridView1[3, dataGridView1.CurrentRow.Index].Value;
            var inv = (int) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var name = (string) dataGridView1[2, dataGridView1.CurrentRow.Index].Value;
            var tid = (string) dataGridView1[4, dataGridView1.CurrentRow.Index].Value;
            var brak = new SetMachineForm(ind, wind, tid, inv, name);
            brak.Show();
            Hide();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.MachineDelite(id);
        }
    }
}