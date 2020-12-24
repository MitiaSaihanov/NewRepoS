using System;
using System.Windows.Forms;
using DataBase;
using DataBase_1.InsertForm;
using DataBase_1.SetForm;

namespace DataBase_1
{
    public partial class DrawingForn : Form
    {
        private DB data;

        public DrawingForn()
        {
            InitializeComponent();
        }

        private void DrawingForn_Load(object sender, EventArgs e)
        {
            data = DB.GetDB();
            dataGridView1.AutoGenerateColumns = true;
            bindingSource1.DataSource = data.GetDataTable("call drawingselect()");
            dataGridView1.DataSource = bindingSource1;
            dataGridView1.Columns[0].HeaderText = "Индекс чертежа";
            dataGridView1.Columns[1].HeaderText = "Индекс детали";
            dataGridView1.Columns[2].HeaderText = "Код чертежа";
            dataGridView1.Columns[3].HeaderText = "Сотрудник проверил";
            dataGridView1.Columns[4].HeaderText = "Сотрудник создал";
        }

        private void bindingNavigatorDeleteItem_Click_2(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
            data.drawingdelet(id);
        }

        private void toolStripAddButton_Click(object sender, EventArgs e)
        {
            var detail = new DrawingInsertForm();
            detail.Show();
            Hide();
        }

        private void toolStripSetButton_Click(object sender, EventArgs e)
        {
            var id = (int) dataGridView1[0, dataGridView1.CurrentRow.Index].Value;
            var detName = (string) dataGridView1[1, dataGridView1.CurrentRow.Index].Value;
            var drawing_kod = (string) dataGridView1[2, dataGridView1.CurrentRow.Index].Value;
            var chInc = (string) dataGridView1[3, dataGridView1.CurrentRow.Index].Value;
            var crInc = (string) dataGridView1[4, dataGridView1.CurrentRow.Index].Value;
            var drawing = new DrawingUpdateForm();
            drawing.SetDrawingElement(id, detName, drawing_kod, chInc, crInc);
            drawing.Show();
            Hide();
        }
    }
}