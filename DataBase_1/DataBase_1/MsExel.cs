using System;
using System.Drawing;
using System.Threading;
using DataBase;
using Microsoft.Office.Interop.Excel;
using DataTable = System.Data.DataTable;

namespace DataBase_1
{
    internal class MsExel
    {
        private readonly DB dB = DB.GetDB();

        public void createTableExel1()
        {
            var excelApp = new Application();
            Workbook workBook;
            Worksheet workSheet;
            var table = dB.GetDataTable("call GetRealProizvDetail()");
            workBook = excelApp.Workbooks.Add();
            workSheet = (Worksheet) workBook.Worksheets.get_Item(1);
            var rng2 = workSheet.Range[workSheet.Cells[1, 1],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            CreateExelTable(table, rng2, workSheet, excelApp);
            CreateChartObjectP(100, 100, 300, 300, rng2, workSheet, "Диаграмма заверш деталей");
        }

        public void createTableExel2()
        {
            var excelApp = new Application();
            Workbook workBook;
            Worksheet workSheet;
            var table = dB.GetDataTable("call GetRealProcDetail()");
            workBook = excelApp.Workbooks.Add();
            workSheet = (Worksheet) workBook.Worksheets.get_Item(1);
            var rng2 = workSheet.Range[workSheet.Cells[1, 2],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            var rng3 = workSheet.Range[workSheet.Cells[1, 1],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            CreateExelTable(table, rng3, workSheet, excelApp);
            CreateChartObjectD(100, 100, 700, 300, rng2, workSheet, "Процент завершенности", 0);
        }

        public void createTableExel3(DateTime dateTimeStrt, DateTime dateTimeEnd)
        {
            var excelApp = new Application();
            Workbook workBook;
            Worksheet workSheet;
            var table = dB.GetDiagr3(dateTimeStrt, dateTimeEnd);
            workBook = excelApp.Workbooks.Add();
            workSheet = (Worksheet) workBook.Worksheets.get_Item(1);
            var rng2 = workSheet.Range[workSheet.Cells[1, 2],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            var rng3 = workSheet.Range[workSheet.Cells[1, 1],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            CreateExelTable(table, rng3, workSheet, excelApp);
            CreateChartObjectD(100, 100, 700, 300, rng2, workSheet, "Процент брака по операциям", 0);
        }

        public void CreatePicher()
        {
            var excelApp = new Application();
            Workbook workBook;
            Worksheet workSheet;
            var table = dB.ShameBoard();
            workBook = excelApp.Workbooks.Add();
            workSheet = (Worksheet) workBook.Worksheets.get_Item(1);
            var rng2 = workSheet.Range[workSheet.Cells[1, 2],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            var rng3 = workSheet.Range[workSheet.Cells[1, 1],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            CreateExelTable(table, rng3, workSheet, excelApp);
            CreateChartObjectD(100, 100, 700, 300, rng2, workSheet, "Диаграмма позора", 1);
            excelApp.DisplayAlerts = false;
            workBook.Close(false);
            excelApp.Quit();
            excelApp.DisplayAlerts = true;
        }

        public void createTableExel4()
        {
            var excelApp = new Application();
            Workbook workBook;
            Worksheet workSheet;
            var table = dB.GetDataTable("call GetIncumbetnOperBrak()");
            workBook = excelApp.Workbooks.Add();
            workSheet = (Worksheet) workBook.Worksheets.get_Item(1);
            var rng2 = workSheet.Range[workSheet.Cells[1, 1],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            var rng3 = workSheet.Range[workSheet.Cells[1, 1],
                workSheet.Cells[table.Rows.Count + 1, table.Columns.Count]];
            CreateExelTable(table, rng3, workSheet, excelApp);
            CreateChartObjectD(100, 100, 700, 300, rng2, workSheet, "Результативность сотрудников", 0);
        }


        public void CreateExelTable(DataTable table, Range range, Worksheet workSheet, Application excelApp)
        {
            for (var j = 0; j < table.Columns.Count; j++) workSheet.Cells[1, j + 1] = table.Columns[j].ColumnName;
            for (var j = 0; j < table.Rows.Count; j++)
            for (var i = 0; i < table.Columns.Count; i++)
                workSheet.Cells[j + 2, i + 1] = table.Rows[j][i];
            range.Borders.Color = Color.Black.ToArgb();
            excelApp.Visible = true;
            excelApp.UserControl = true;
        }

        public void CreateChartObjectD(int left, int top, int wight, int hieght, Range range, Worksheet workSheet,
            string NameDiagramm, int PIcter)
        {
            var chartObjs = (ChartObjects) workSheet.ChartObjects();
            var chartObj = chartObjs.Add(left, top, wight, hieght);
            var xlChart = chartObj.Chart;
            xlChart.HasTitle = true;
            xlChart.ChartTitle.Text = NameDiagramm;
            xlChart.ChartType = XlChartType.xlColumnClustered;
            xlChart.SetSourceData(range);
            if (PIcter == 1)
            {
                Thread.Sleep(5);
                xlChart.Export("E:\\Chart.png", "PNG", false);
            }
        }

        public void CreateChartObjectP(int left, int top, int wight, int hieght, Range range, Worksheet workSheet,
            string NameDiagramm)
        {
            var chartObjs = (ChartObjects) workSheet.ChartObjects();
            var chartObj = chartObjs.Add(left, top, wight, hieght);
            var xlChart = chartObj.Chart;

            xlChart.ChartType = XlChartType.xlPie;
            xlChart.HasTitle = true;
            xlChart.ChartTitle.Text = NameDiagramm;
            xlChart.SetSourceData(range);
        }
    }
}