using System;
using System.Windows.Forms;
using DataBase_1.Excel;
using DataBase_1.Excel2;
using DataBase_1.Requests;
using DataBase_1.SelectForm;
using DataBase_1.Word;

namespace DataBase_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
        }

        private void деталиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form2 = new Form2();
            form2.Show();
            ;
        }

        private void чертежиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form2 = new DrawingForn();
            form2.Show();
            ;
        }

        private void экземплярыПродуктовToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var exProductSelect = new ExProductSelect();
            exProductSelect.Show();
        }

        private void сотрудникиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var incumbentForm = new IncumbentForm();
            incumbentForm.Show();
        }

        private void станкиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var machineForm = new MachineForm();
            machineForm.Show();
        }

        private void операцииToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var operationForm = new OperationForm();
            operationForm.Show();
        }

        private void типыСтанковToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var typeForm = new TypeForm();
            typeForm.Show();
        }

        private void заводыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var workPlaceForm = new WorkPlaceForm();
            workPlaceForm.Show();
        }

        private void должностиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var workPositionForm = new WorkPositionForm();
            workPositionForm.Show();
        }

        private void бракиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new BrakForm();
            brakForm.Show();
        }

        private void продуктToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new ProductionForm();
            brakForm.Show();
        }

        private void countDetailToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new CountDetail();
            brakForm.Show();
        }

        private void countExmplDetailToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new CountExmplDetail();
            brakForm.Show();
        }

        private void countOperationsSortDateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new CountOperationsSortDate();
            brakForm.Show();
        }

        private void totalTimeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new TotalTime();
            brakForm.Show();
        }

        private void countOperationsSortNameToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new CountOperationsSortName();
            brakForm.Show();
        }

        private void excelToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void wordToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new Wr_1();
            brakForm.Show();
        }

        private void произведенныеЭкземплярыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new ExcelRealDetail();
            brakForm.Show();
        }

        private void степеньЗавершенностиПроизводстваToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new ExcelStepen();
            brakForm.Show();
        }

        private void процентБракаToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new Ex_1();
            brakForm.Show();
        }

        private void числоОперацийКаждымСотрудникомToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var brakForm = new ExcelCountOper();
            brakForm.Show();
        }
    }
}