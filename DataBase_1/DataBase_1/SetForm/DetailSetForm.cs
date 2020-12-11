using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using DataBase;

namespace DataBase_1.SetForm
{
    public partial class DetailSetForm : Form
    {
        private DB dB;
        private string detailAgregat;
        private int DetailID;
        private string detailImport;
        private string detailName;
        private byte[] image;

        public DetailSetForm()
        {
            InitializeComponent();
        }

        private void DetailInsertForm_Load(object sender, EventArgs e)
        {
            dB = DB.GetDB();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dB.detailupdate(DetailID, textBox1.Text, textBox2.Text, textBox3.Text, image);
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

        public void SetDetailElement(int DetailID, string detailName, string detailAgregat, string detailImport,
            byte[] detailImage)
        {
            this.DetailID = DetailID;
            this.detailName = detailName;
            this.detailAgregat = detailAgregat;
            this.detailImport = detailImport;
            image = detailImage;
            label6.Text = Convert.ToString(DetailID);
            textBox1.Text = detailName;
            textBox2.Text = detailAgregat;
            textBox3.Text = detailImport;
            pictureBox1.Image = byteArrayToImage(detailImage);
        }
    }
}