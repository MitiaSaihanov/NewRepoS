namespace DataBase_1
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.детальToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.деталиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.чертежToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.экземплярПродуктаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.сотрудникиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.машиныToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.операцияToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.продуктToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.типыМашинToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.рабочиеМестаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.должностиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.бракToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.запросыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.countDetailToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.countExmplDetailToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.countOperationsSortDateToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.totalTimeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.countOperationsSortNameToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.отчетыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.excelToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.произведенныеЭкземплярыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.степеньЗавершенностиПроизводстваToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.процентБракаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.числоОперацийКаждымСотрудникомToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.wordToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {this.детальToolStripMenuItem, this.запросыToolStripMenuItem, this.отчетыToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(487, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            this.детальToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {this.деталиToolStripMenuItem, this.чертежToolStripMenuItem, this.экземплярПродуктаToolStripMenuItem, this.сотрудникиToolStripMenuItem, this.машиныToolStripMenuItem, this.операцияToolStripMenuItem, this.продуктToolStripMenuItem, this.типыМашинToolStripMenuItem, this.рабочиеМестаToolStripMenuItem, this.должностиToolStripMenuItem, this.бракToolStripMenuItem});
            this.детальToolStripMenuItem.Name = "детальToolStripMenuItem";
            this.детальToolStripMenuItem.Size = new System.Drawing.Size(72, 20);
            this.детальToolStripMenuItem.Text = "Формы";
            this.деталиToolStripMenuItem.Name = "деталиToolStripMenuItem";
            this.деталиToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.деталиToolStripMenuItem.Text = "Детали";
            this.деталиToolStripMenuItem.Click += new System.EventHandler(this.деталиToolStripMenuItem_Click);
            this.чертежToolStripMenuItem.Name = "чертежToolStripMenuItem";
            this.чертежToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.чертежToolStripMenuItem.Text = "Чертеж";
            this.чертежToolStripMenuItem.Click += new System.EventHandler(this.чертежиToolStripMenuItem_Click);
            this.экземплярПродуктаToolStripMenuItem.Name = "экземплярПродуктаToolStripMenuItem";
            this.экземплярПродуктаToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.экземплярПродуктаToolStripMenuItem.Text = "Экземпляр продукта";
            this.экземплярПродуктаToolStripMenuItem.Click += new System.EventHandler(this.экземплярыПродуктовToolStripMenuItem_Click);
            this.сотрудникиToolStripMenuItem.Name = "сотрудникиToolStripMenuItem";
            this.сотрудникиToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.сотрудникиToolStripMenuItem.Text = "Сотрудники";
            this.сотрудникиToolStripMenuItem.Click += new System.EventHandler(this.сотрудникиToolStripMenuItem_Click);
            this.машиныToolStripMenuItem.Name = "машиныToolStripMenuItem";
            this.машиныToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.машиныToolStripMenuItem.Text = "Станки";
            this.машиныToolStripMenuItem.Click += new System.EventHandler(this.станкиToolStripMenuItem_Click);
            this.операцияToolStripMenuItem.Name = "операцияToolStripMenuItem";
            this.операцияToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.операцияToolStripMenuItem.Text = "Операции";
            this.операцияToolStripMenuItem.Click += new System.EventHandler(this.операцииToolStripMenuItem_Click);
            this.продуктToolStripMenuItem.Name = "продуктToolStripMenuItem";
            this.продуктToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.продуктToolStripMenuItem.Text = "Продукты";
            this.продуктToolStripMenuItem.Click += new System.EventHandler(this.продуктToolStripMenuItem_Click);
            this.типыМашинToolStripMenuItem.Name = "типыМашинToolStripMenuItem";
            this.типыМашинToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.типыМашинToolStripMenuItem.Text = "Типы станков";
            this.типыМашинToolStripMenuItem.Click += new System.EventHandler(this.типыСтанковToolStripMenuItem_Click);
            this.рабочиеМестаToolStripMenuItem.Name = "рабочиеМестаToolStripMenuItem";
            this.рабочиеМестаToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.рабочиеМестаToolStripMenuItem.Text = "Рабочие места";
            this.рабочиеМестаToolStripMenuItem.Click += new System.EventHandler(this.заводыToolStripMenuItem_Click);
            this.должностиToolStripMenuItem.Name = "должностиToolStripMenuItem";
            this.должностиToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.должностиToolStripMenuItem.Text = "Должности";
            this.должностиToolStripMenuItem.Click += new System.EventHandler(this.должностиToolStripMenuItem_Click);
            this.бракToolStripMenuItem.Name = "бракToolStripMenuItem";
            this.бракToolStripMenuItem.Size = new System.Drawing.Size(227, 26);
            this.бракToolStripMenuItem.Text = "Брак";
            this.бракToolStripMenuItem.Click += new System.EventHandler(this.бракиToolStripMenuItem_Click);
            this.запросыToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {this.countDetailToolStripMenuItem, this.countExmplDetailToolStripMenuItem, this.countOperationsSortDateToolStripMenuItem, this.totalTimeToolStripMenuItem, this.countOperationsSortNameToolStripMenuItem});
            this.запросыToolStripMenuItem.Name = "запросыToolStripMenuItem";
            this.запросыToolStripMenuItem.Size = new System.Drawing.Size(82, 20);
            this.запросыToolStripMenuItem.Text = "Запросы";
            this.countDetailToolStripMenuItem.Name = "countDetailToolStripMenuItem";
            this.countDetailToolStripMenuItem.Size = new System.Drawing.Size(401, 26);
            this.countDetailToolStripMenuItem.Text = "Количество чертежей";
            this.countDetailToolStripMenuItem.Click += new System.EventHandler(this.countDetailToolStripMenuItem_Click);
            this.countExmplDetailToolStripMenuItem.Name = "countExmplDetailToolStripMenuItem";
            this.countExmplDetailToolStripMenuItem.Size = new System.Drawing.Size(401, 26);
            this.countExmplDetailToolStripMenuItem.Text = "Число произведенных деталей";
            this.countExmplDetailToolStripMenuItem.Click += new System.EventHandler(this.countExmplDetailToolStripMenuItem_Click);
            this.countOperationsSortDateToolStripMenuItem.Name = "countOperationsSortDateToolStripMenuItem";
            this.countOperationsSortDateToolStripMenuItem.Size = new System.Drawing.Size(401, 26);
            this.countOperationsSortDateToolStripMenuItem.Text = "Количество операций с сортировкой по дате";
            this.countOperationsSortDateToolStripMenuItem.Click += new System.EventHandler(this.countOperationsSortDateToolStripMenuItem_Click);
            this.totalTimeToolStripMenuItem.Name = "totalTimeToolStripMenuItem";
            this.totalTimeToolStripMenuItem.Size = new System.Drawing.Size(401, 26);
            this.totalTimeToolStripMenuItem.Text = "Общее время производства";
            this.totalTimeToolStripMenuItem.Click += new System.EventHandler(this.totalTimeToolStripMenuItem_Click);
            this.countOperationsSortNameToolStripMenuItem.Name = "countOperationsSortNameToolStripMenuItem";
            this.countOperationsSortNameToolStripMenuItem.Size = new System.Drawing.Size(401, 26);
            this.countOperationsSortNameToolStripMenuItem.Text = "Кол-во операций с сорт. по имени";
            this.countOperationsSortNameToolStripMenuItem.Click += new System.EventHandler(this.countOperationsSortNameToolStripMenuItem_Click);
            this.отчетыToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {this.excelToolStripMenuItem, this.wordToolStripMenuItem});
            this.отчетыToolStripMenuItem.Name = "отчетыToolStripMenuItem";
            this.отчетыToolStripMenuItem.Size = new System.Drawing.Size(71, 20);
            this.отчетыToolStripMenuItem.Text = "Отчеты";
            this.excelToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {this.произведенныеЭкземплярыToolStripMenuItem, this.степеньЗавершенностиПроизводстваToolStripMenuItem, this.процентБракаToolStripMenuItem, this.числоОперацийКаждымСотрудникомToolStripMenuItem});
            this.excelToolStripMenuItem.Name = "excelToolStripMenuItem";
            this.excelToolStripMenuItem.Size = new System.Drawing.Size(120, 26);
            this.excelToolStripMenuItem.Text = "Excel";
            this.excelToolStripMenuItem.Click += new System.EventHandler(this.excelToolStripMenuItem_Click);
            this.произведенныеЭкземплярыToolStripMenuItem.Name = "произведенныеЭкземплярыToolStripMenuItem";
            this.произведенныеЭкземплярыToolStripMenuItem.Size = new System.Drawing.Size(359, 26);
            this.произведенныеЭкземплярыToolStripMenuItem.Text = "Произведенные экземпляры";
            this.произведенныеЭкземплярыToolStripMenuItem.Click += new System.EventHandler(this.произведенныеЭкземплярыToolStripMenuItem_Click);
            this.степеньЗавершенностиПроизводстваToolStripMenuItem.Name = "степеньЗавершенностиПроизводстваToolStripMenuItem";
            this.степеньЗавершенностиПроизводстваToolStripMenuItem.Size = new System.Drawing.Size(359, 26);
            this.степеньЗавершенностиПроизводстваToolStripMenuItem.Text = "Степень завершенности производства ";
            this.степеньЗавершенностиПроизводстваToolStripMenuItem.Click += new System.EventHandler(this.степеньЗавершенностиПроизводстваToolStripMenuItem_Click);
            this.процентБракаToolStripMenuItem.Name = "процентБракаToolStripMenuItem";
            this.процентБракаToolStripMenuItem.Size = new System.Drawing.Size(359, 26);
            this.процентБракаToolStripMenuItem.Text = "Процент брака ";
            this.процентБракаToolStripMenuItem.Click += new System.EventHandler(this.процентБракаToolStripMenuItem_Click);
            this.числоОперацийКаждымСотрудникомToolStripMenuItem.Name = "числоОперацийКаждымСотрудникомToolStripMenuItem";
            this.числоОперацийКаждымСотрудникомToolStripMenuItem.Size = new System.Drawing.Size(359, 26);
            this.числоОперацийКаждымСотрудникомToolStripMenuItem.Text = "Число операций, каждым сотрудником";
            this.числоОперацийКаждымСотрудникомToolStripMenuItem.Click += new System.EventHandler(this.числоОперацийКаждымСотрудникомToolStripMenuItem_Click);
            this.wordToolStripMenuItem.Name = "wordToolStripMenuItem";
            this.wordToolStripMenuItem.Size = new System.Drawing.Size(120, 26);
            this.wordToolStripMenuItem.Text = "Word";
            this.wordToolStripMenuItem.Click += new System.EventHandler(this.wordToolStripMenuItem_Click);
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(487, 421);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Form1";
            this.Text = "Главное меню";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();
        }

        private System.Windows.Forms.ToolStripMenuItem countDetailToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem countExmplDetailToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem countOperationsSortDateToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem countOperationsSortNameToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem excelToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem totalTimeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem wordToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem бракToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem деталиToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem детальToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem должностиToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem запросыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem машиныToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem операцияToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem отчетыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem продуктToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem произведенныеЭкземплярыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem процентБракаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem рабочиеМестаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem сотрудникиToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem степеньЗавершенностиПроизводстваToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem типыМашинToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem чертежToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem числоОперацийКаждымСотрудникомToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem экземплярПродуктаToolStripMenuItem;

        #endregion
    }
}

