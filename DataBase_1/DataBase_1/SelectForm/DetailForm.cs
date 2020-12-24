using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class Form2 : Form
    {
        private DB data;

        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call detailselect()");
            dataGridView1.DataSource = bindingSource1;
            dataGridView1.Columns[0].HeaderText = "Индекс детали";
            dataGridView1.Columns[1].HeaderText = "Название детали";
            dataGridView1.Columns[2].HeaderText = "Агрегат детали";
            dataGridView1.Columns[3].HeaderText = "Импорт детали";
            dataGridView1.Columns[4].HeaderText = "Изображение";
            dataGridView1.Columns[5].HeaderText = "Порядок сортировки";
        }

        private void toolStripAddButton_Click(object sender, EventArgs e)
        {
            var detail = new DetailInsertForm();
            detail.Show();
            Hide();
        }

        private void toolStripSetButton_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;

            var incName = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var exNumber = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var detail = new DetailSetForm();

            detail.Show();
            Hide();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.detaildelet(id);
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.Detaildelet(id);
        }

        private void запросыToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}