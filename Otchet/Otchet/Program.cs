using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Word = Microsoft.Office.Interop.Word;

namespace Otchet
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string[]> lol = new List<string[]>();
            lol.Add(new string[] { "Пластырь", "2" });
            lol.Add(new string[] { "Крюк", "5" });
            lol.Add(new string[] { "Экран", "10" });
            lol.Add(new string[] { "Иванов И. Г.", "лопасть, 10" });
            lol.Add(new string[] { "Сидоров И. Д.", "120" });
            Otchet3(lol);
        }

        public static void Otchet1(List<string[]> arr)
        {
            Microsoft.Office.Interop.Word.Application winword =
                new Microsoft.Office.Interop.Word.Application();

            winword.Visible = false;

            //Заголовок документа
            winword.Documents.Application.Caption = "Производство за заданный период";

            object missing = System.Reflection.Missing.Value;

            //Создание нового документа
            Microsoft.Office.Interop.Word.Document document =
            winword.Documents.Add(ref missing, ref missing, ref missing, ref missing);

            //добавление новой страницы
            //winword.Selection.InsertNewPage();

            ////Добавление верхнего колонтитула
            //foreach (Microsoft.Office.Interop.Word.Section section in document.Sections)
            //{
            //    Microsoft.Office.Interop.Word.Range headerRange = section.Headers[
            //    Microsoft.Office.Interop.Word.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range;
            //    headerRange.Fields.Add(
            //    headerRange, Microsoft.Office.Interop.Word.WdFieldType.wdFieldPage);
            //    headerRange.ParagraphFormat.Alignment =
            //    Microsoft.Office.Interop.Word.WdParagraphAlignment.wdAlignParagraphCenter;
            //    headerRange.Font.ColorIndex =
            //    Microsoft.Office.Interop.Word.WdColorIndex.wdBlue;
            //    headerRange.Font.Size = 10;
            //    headerRange.Text = "Верхний колонтитул" + Environment.NewLine + "www.CSharpCoderR.com";
            //}

            ////Добавление нижнего колонтитула
            //foreach (Microsoft.Office.Interop.Word.Section wordSection in document.Sections)
            //{
            //    //
            //    Microsoft.Office.Interop.Word.Range footerRange =
            //    wordSection.Footers[Microsoft.Office.Interop.Word.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range;
            //    //Установка цвета текста
            //    footerRange.Font.ColorIndex = Microsoft.Office.Interop.Word.WdColorIndex.wdDarkRed;
            //    //Размер
            //    footerRange.Font.Size = 10;
            //    //Установка расположения по центру
            //    footerRange.ParagraphFormat.Alignment =
            //    Microsoft.Office.Interop.Word.WdParagraphAlignment.wdAlignParagraphCenter;
            //    //Установка текста для вывода в нижнем колонтитуле
            //    footerRange.Text = "Нижний колонтитул" + Environment.NewLine + "www.CSharpCoderR.com";
            //}

            ////Добавление текста в документ
            //document.Content.SetRange(0, 0);
            //document.Content.Text = "www.CSharpCoderR.com" + Environment.NewLine;

            //Добавление текста со стилем Заголовок 1
            Microsoft.Office.Interop.Word.Paragraph para1 = document.Content.Paragraphs.Add(ref missing);
            //object styleHeading1 = "Заголовок 1";
            //para1.Range.set_Style(styleHeading1);
            para1.Range.Text = "Производство за заданный период";
            para1.Range.Bold = 1;
            para1.Range.Font.Size = 16;
            para1.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;
            para1.Range.InsertParagraphAfter();

            //Создание таблицы 5х5
            Word.Table firstTable = document.Tables.Add(para1.Range, arr.Count + 1, 2, ref missing, ref missing);

            firstTable.Borders.Enable = 1;
            foreach (Word.Row row in firstTable.Rows)
            {
                foreach (Word.Cell cell in row.Cells)
                {
                    //Заголовок таблицы
                    if (cell.RowIndex == 1)
                    {
                        if (cell.ColumnIndex == 1) { cell.Range.Text = "Название детали"; }
                        else { cell.Range.Text = "Кол-во экземпляров"; }
                        //cell.Range.Text = "Колонка " + cell.ColumnIndex.ToString();
                        cell.Range.Font.Bold = 1;
                        //Задаем шрифт и размер текста
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Shading.BackgroundPatternColor = Word.WdColor.wdColorGray25;
                        //Выравнивание текста в заголовках столбцов по центру
                        cell.VerticalAlignment =
                        Word.WdCellVerticalAlignment.wdCellAlignVerticalCenter;
                        cell.Range.ParagraphFormat.Alignment =
                        Word.WdParagraphAlignment.wdAlignParagraphCenter;
                    }
                    //Значения ячеек
                    else
                    {
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Range.Font.Bold = 0;

                        if (cell.ColumnIndex == 1) { cell.Range.Text = arr[cell.RowIndex - 2][0]; }
                        else { cell.Range.Text = arr[cell.RowIndex - 2][1]; }
                        //cell.Range.Text = (cell.RowIndex - 2 + cell.ColumnIndex).ToString();
                    }
                }
            }

            //Сохранение документа
            object filename = "D:\\4 курс\\1 семестр\\Горохов\\Lab6\\Wordik\\Производство за заданный период";
            document.SaveAs(ref filename);
            winword.Visible = true;
            //Закрытие текущего документа
            //document.Close(ref missing, ref missing, ref missing);
            document = null;

            //Закрытие приложения Word
            //winword.Quit(ref missing, ref missing, ref missing);
            //winword = null;
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message);
            //}
        }

        public static void Otchet2(List<string[]> arr)
        {
            Microsoft.Office.Interop.Word.Application winword =
                new Microsoft.Office.Interop.Word.Application();

            winword.Visible = false;

            //Заголовок документа
            winword.Documents.Application.Caption = "Доска почета";

            object missing = System.Reflection.Missing.Value;

            //Создание нового документа
            Microsoft.Office.Interop.Word.Document document =
            winword.Documents.Add(ref missing, ref missing, ref missing, ref missing);

            //Добавление текста со стилем Заголовок 1
            Microsoft.Office.Interop.Word.Paragraph para1 = document.Content.Paragraphs.Add(ref missing);
            //object styleHeading1 = "Заголовок 1";
            //para1.Range.set_Style(styleHeading1);
            para1.Range.Text = "Доска почета";
            para1.Range.Bold = 1;
            para1.Range.Font.Size = 16;
            para1.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;
            para1.Range.InsertParagraphAfter();

            //Создание таблицы 5х5
            Word.Table firstTable = document.Tables.Add(para1.Range, arr.Count + 1, 2, ref missing, ref missing);

            firstTable.Borders.Enable = 1;
            foreach (Word.Row row in firstTable.Rows)
            {
                foreach (Word.Cell cell in row.Cells)
                {
                    //Заголовок таблицы
                    if (cell.RowIndex == 1)
                    {
                        if (cell.ColumnIndex == 1) { cell.Range.Text = "ФИО передовика"; }
                        else { cell.Range.Text = "Название и кол-во деталей"; }
                        //cell.Range.Text = "Колонка " + cell.ColumnIndex.ToString();
                        cell.Range.Font.Bold = 1;
                        //Задаем шрифт и размер текста
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Shading.BackgroundPatternColor = Word.WdColor.wdColorGray25;
                        //Выравнивание текста в заголовках столбцов по центру
                        cell.VerticalAlignment =
                        Word.WdCellVerticalAlignment.wdCellAlignVerticalCenter;
                        cell.Range.ParagraphFormat.Alignment =
                        Word.WdParagraphAlignment.wdAlignParagraphCenter;
                    }
                    //Значения ячеек
                    else
                    {
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Range.Font.Bold = 0;

                        if (cell.ColumnIndex == 1) { cell.Range.Text = arr[cell.RowIndex - 2][0]; }
                        else { cell.Range.Text = arr[cell.RowIndex - 2][1]; }
                        //cell.Range.Text = (cell.RowIndex - 2 + cell.ColumnIndex).ToString();
                    }
                }
            }

            //Сохранение документа
            object filename = "D:\\4 курс\\1 семестр\\Горохов\\Lab6\\Wordik\\Доска почета";
            document.SaveAs(ref filename);
            winword.Visible = true;
            document = null;
        }

        public static void Otchet3(List<string[]> arr)
        {
            Microsoft.Office.Interop.Word.Application winword =
                new Microsoft.Office.Interop.Word.Application();

            winword.Visible = false;

            //Заголовок документа
            winword.Documents.Application.Caption = "Позор бракоделам";

            object missing = System.Reflection.Missing.Value;

            //Создание нового документа
            Microsoft.Office.Interop.Word.Document document =
            winword.Documents.Add(ref missing, ref missing, ref missing, ref missing);

            //Добавление текста со стилем Заголовок 1
            Microsoft.Office.Interop.Word.Paragraph para1 = document.Content.Paragraphs.Add(ref missing);
            //object styleHeading1 = "Заголовок 1";
            //para1.Range.set_Style(styleHeading1);
            para1.Range.Text = "Позор бракоделам";
            para1.Range.Bold = 1;
            para1.Range.Font.Size = 16;
            para1.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;
            para1.Range.InsertParagraphAfter();

            //Создание таблицы 5х5
            Word.Table firstTable = document.Tables.Add(para1.Range, arr.Count + 1, 2, ref missing, ref missing);

            firstTable.Borders.Enable = 1;
            foreach (Word.Row row in firstTable.Rows)
            {
                foreach (Word.Cell cell in row.Cells)
                {
                    //Заголовок таблицы
                    if (cell.RowIndex == 1)
                    {
                        if (cell.ColumnIndex == 1) { cell.Range.Text = "ФИО работника"; }
                        else { cell.Range.Text = "Кол-во бракованных деталей"; }
                        //cell.Range.Text = "Колонка " + cell.ColumnIndex.ToString();
                        cell.Range.Font.Bold = 1;
                        //Задаем шрифт и размер текста
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Shading.BackgroundPatternColor = Word.WdColor.wdColorGray25;
                        //Выравнивание текста в заголовках столбцов по центру
                        cell.VerticalAlignment =
                        Word.WdCellVerticalAlignment.wdCellAlignVerticalCenter;
                        cell.Range.ParagraphFormat.Alignment =
                        Word.WdParagraphAlignment.wdAlignParagraphCenter;
                    }
                    //Значения ячеек
                    else
                    {
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Range.Font.Bold = 0;

                        if (cell.ColumnIndex == 1) { cell.Range.Text = arr[cell.RowIndex - 2][0]; }
                        else { cell.Range.Text = arr[cell.RowIndex - 2][1]; }
                        //cell.Range.Text = (cell.RowIndex - 2 + cell.ColumnIndex).ToString();
                    }
                }
            }

            //Сохранение документа
            object filename = "D:\\4 курс\\1 семестр\\Горохов\\Lab6\\Wordik\\Позор бракоделам";
            document.SaveAs(ref filename);
            winword.Visible = true;
            document = null;
        }

        public static void Otchet4(List<string[]> arr)
        {
            Microsoft.Office.Interop.Word.Application winword =
                new Microsoft.Office.Interop.Word.Application();

            winword.Visible = false;

            //Заголовок документа
            winword.Documents.Application.Caption = "Незавершенка";

            object missing = System.Reflection.Missing.Value;

            //Создание нового документа
            Microsoft.Office.Interop.Word.Document document =
            winword.Documents.Add(ref missing, ref missing, ref missing, ref missing);

            //Добавление текста со стилем Заголовок 1
            Microsoft.Office.Interop.Word.Paragraph para1 = document.Content.Paragraphs.Add(ref missing);
            //object styleHeading1 = "Заголовок 1";
            //para1.Range.set_Style(styleHeading1);
            para1.Range.Text = "Незавершенка";
            para1.Range.Bold = 1;
            para1.Range.Font.Size = 16;
            para1.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;
            para1.Range.InsertParagraphAfter();

            //Создание таблицы 5х5
            Word.Table firstTable = document.Tables.Add(para1.Range, arr.Count + 1, 2, ref missing, ref missing);

            firstTable.Borders.Enable = 1;
            foreach (Word.Row row in firstTable.Rows)
            {
                foreach (Word.Cell cell in row.Cells)
                {
                    //Заголовок таблицы
                    if (cell.RowIndex == 1)
                    {
                        if (cell.ColumnIndex == 1) { cell.Range.Text = "Название детали"; }
                        else { cell.Range.Text = "Кол-во незавершенных экземпляров"; }
                        //cell.Range.Text = "Колонка " + cell.ColumnIndex.ToString();
                        cell.Range.Font.Bold = 1;
                        //Задаем шрифт и размер текста
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Shading.BackgroundPatternColor = Word.WdColor.wdColorGray25;
                        //Выравнивание текста в заголовках столбцов по центру
                        cell.VerticalAlignment =
                        Word.WdCellVerticalAlignment.wdCellAlignVerticalCenter;
                        cell.Range.ParagraphFormat.Alignment =
                        Word.WdParagraphAlignment.wdAlignParagraphCenter;
                    }
                    //Значения ячеек
                    else
                    {
                        cell.Range.Font.Name = "verdana";
                        cell.Range.Font.Size = 12;
                        cell.Range.Font.Bold = 0;

                        if (cell.ColumnIndex == 1) { cell.Range.Text = arr[cell.RowIndex - 2][0]; }
                        else { cell.Range.Text = arr[cell.RowIndex - 2][1]; }
                        //cell.Range.Text = (cell.RowIndex - 2 + cell.ColumnIndex).ToString();
                    }
                }
            }

            //Сохранение документа
            object filename = "D:\\4 курс\\1 семестр\\Горохов\\Lab6\\Wordik\\Позор бракоделам";
            document.SaveAs(ref filename);
            winword.Visible = true;
            document = null;
        }
    }
}
