using System;
using DataBase;
using System.Data;
using Microsoft.Office.Interop.Word;
using System.Windows.Forms;
using Applicationn = Microsoft.Office.Interop.Word;
using DataTable = System.Data.DataTable;
using System.IO;
using System.Threading;

namespace DataBase_1.Word
{
    public partial class Wr_1 : Form
    {
        
        private DB dataBase;
        
        public Wr_1()
        {
            InitializeComponent();
            dataBase = DB.GetDB();
        }
        
        MsExel ms = new MsExel();
        
        private void button1_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            DataTable table = new DataTable();
            table = dataBase.ProductionForThePeriod(dateTimePicker2.Value,dateTimePicker1.Value);
            otchet(table,"Производство c "+ string.Format("{0:yyyy-MM-dd}", dateTimePicker2.Value)+" по " + string.Format("{0:yyyy-MM-dd}", dateTimePicker1.Value), 0);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            otchet(dataBase.HallOfFame(),"Доска почета", 0);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            otchet(dataBase.ShameBoard(), "Позор бракоделам", 0);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //throw new System.NotImplementedException();
            otchet(dataBase.UnfinishedProduction(), "Незавершенка",1);
        }

        public void otchet(DataTable  table, string name, int num)
        {
            Applicationn.Application winword =
                new Applicationn.Application();

            winword.Visible = false;

            //Заголовок документа
            winword.Documents.Application.Caption = name;

            object missing = System.Reflection.Missing.Value;

            //Создание нового документа
            Microsoft.Office.Interop.Word.Document document =
            winword.Documents.Add(ref missing, ref missing, ref missing, ref missing);

            //Добавление текста со стилем Заголовок 1
            Microsoft.Office.Interop.Word.Paragraph para1 = document.Content.Paragraphs.Add(ref missing);
            //object styleHeading1 = "Заголовок 1";
            //para1.Range.set_Style(styleHeading1);
            para1.Range.Text = name;
            para1.Range.Bold = 1;
            para1.Range.Font.Size = 14;
            para1.Range.Font.Name = "verdana";
            para1.Range.Font.Color = WdColor.wdColorBlack;
            para1.Alignment = WdParagraphAlignment.wdAlignParagraphCenter;
            para1.Range.InsertParagraphAfter();

            //Создание таблицы 5х5
            Table firstTable = document.Tables.Add(para1.Range, table.Rows.Count+1, table.Columns.Count, ref missing, ref missing);

            firstTable.Borders.Enable = 1;
            
            for (int j = 0; j < table.Columns.Count; j++)
            {
                Thread.Sleep(100);
                firstTable.Cell(1, j+1).Range.Text = table.Columns[j].ColumnName;
                firstTable.Cell(1, j+1).Range.Font.Bold = 1;
                //Задаем шрифт и размер текста
                firstTable.Cell(1, j+1).Range.Font.Name = "verdana";
                firstTable.Cell(1, j+1).Range.Font.Size = 12;
                firstTable.Cell(1, j+1).Shading.BackgroundPatternColor = WdColor.wdColorGray25;
                //Выравнивание текста в заголовках столбцов по центру
                firstTable.Cell(1, j+1).VerticalAlignment =
                    WdCellVerticalAlignment.wdCellAlignVerticalCenter;
                firstTable.Cell(1, j+1).Range.ParagraphFormat.Alignment =
                    WdParagraphAlignment.wdAlignParagraphCenter;
            }
            for (int j = 0; j < table.Rows.Count; j++)
            {
                for (int i = 0; i < table.Columns.Count; i++)
                {
                    firstTable.Cell(j+2, i+1).Range.Text = table.Rows[j][i].ToString();
                    firstTable.Cell(j+2, i+1).Range.Font.Name = "verdana";
                    firstTable.Cell(j+2, i+1).Range.Font.Size = 12;
                    firstTable.Cell(j+2, i+1).Range.Font.Bold = 0;
                }
            }

            if (num == 1)
            {
                para1.Range.Text = "";
                para1.Range.Bold = 1;
                para1.Range.Font.Size = 16;
                para1.Alignment = WdParagraphAlignment.wdAlignParagraphCenter;
                para1.Range.InsertParagraphAfter();
                ms.CreatePicher();
                winword.Selection.InlineShapes.AddPicture("E:\\Chart.png", ref missing, ref missing, para1.Range);
                File.Delete("E:\\Сhart.png");
            }
            
            winword.Visible = true;
            document = null;
            /*foreach (Row row in firstTable.Rows)
            {
                foreach (Cell cell in row.Cells)
                {
                    //Заголовок таблицы
                    if (cell.RowIndex == 1)
                    {
                        if (cell.ColumnIndex == 1) { cell.Range.Text = table.Columns[0].ColumnName; }
                        else { cell.Range.Text = table.Columns[1].ColumnName; }
                        //cell.Range.Text = "Колонка " + cell.ColumnIndex.ToString();
                        cell.Range.Font.Bold = 1;
                        //Задаем шрифт и размер текста
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Shading.BackgroundPatternColor = WdColor.wdColorGray25;
                        //Выравнивание текста в заголовках столбцов по центру
                        cell.VerticalAlignment =
                        WdCellVerticalAlignment.wdCellAlignVerticalCenter;
                        cell.Range.ParagraphFormat.Alignment =
                        WdParagraphAlignment.wdAlignParagraphCenter;
                    }
                    //Значения ячеек
                    else
                    {
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Range.Font.Bold = 0;
                        
                        for (int j = 2; j < table.Rows.Count; j++)
                        {
                            for (int i = 0; i < table.Columns.Count; i++)
                            {
                                if (cell.ColumnIndex == 1) { cell.Range.Text = table.Rows[j][i].ToString(); }
                                else { cell.Range.Text = arr[cell.RowIndex - 2][1]; }
                                //cell.Range.Text = table.Rows[j][i];
                            }
                        }

                        if (cell.ColumnIndex == 1) { cell.Range.Text = arr[cell.RowIndex - 2][0]; }
                        else { cell.Range.Text = arr[cell.RowIndex - 2][1]; }
                        //cell.Range.Text = (cell.RowIndex - 2 + cell.ColumnIndex).ToString();
                    }
                }
            }*/
        }

        private void Wr_1_Load(object sender, EventArgs e)
        {

        }
    }
}