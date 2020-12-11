using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.InsertForm
{
    public partial class DetailInsertForm : Form
    {
        private DB dB;
        private byte[] image;

        public DetailInsertForm()
        {
            InitializeComponent();
        }

        private void DetailInsertForm_Load(object sender, EventArgs e)
        {
            dB = DB.GetDB();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dB.detailins(textBox1.Text, textBox2.Text, textBox3.Text, image);
            var form2 = new Form2();
            form2.Show();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var form2 = new Form2();
            form2.Show();
            Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.Cancel)
                return;
            var filename = openFileDialog1.FileName;
            image = File.ReadAllBytes(filename);
            pictureBox1.Image = byteArrayToImage(image);
        }

        public Image byteArrayToImage(byte[] bytesArr)
        {
            using (var memstr = new MemoryStream(bytesArr))
            {
                var img = Image.FromStream(memstr);
                return img;
            }
        }
    }
}