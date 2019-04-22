using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using OtobusRezervasyon.BLL;

namespace OtobusRezervasyon
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public static int neredenid = 0;
        public static int durakid = 0;
        public int seferid = 0;

        private void Form1_Load(object sender, EventArgs e)
        {
            var durak = DurakBLL.duraklarigetirfrom();
            cmb_from.ValueMember = "DurakID";
            cmb_from.DisplayMember = "DurakAdi";
            cmb_from.DataSource = durak;







        }

        private void Lbx_Guzergah_SelectedIndexChanged(object sender, EventArgs e)
        {
            


        }

        private void Cmb_from_SelectedIndexChanged(object sender, EventArgs e)
        {
            neredenid = Convert.ToInt32(cmb_from.SelectedValue);
            var nereden = DurakBLL.duraklarigetirto(neredenid);
            cmb_to.ValueMember = "DurakID";
            cmb_to.DisplayMember = "DurakAdi";
            cmb_to.DataSource = nereden;
            
            
        }

        private void Cmb_to_SelectedIndexChanged(object sender, EventArgs e)
        {
            durakid = Convert.ToInt32(cmb_to.SelectedValue);
            var lbxdata = GuzergahBLL.guzergahlarigetir(durakid);
            lbx_Guzergah.ValueMember = "GuzergahID";
            lbx_Guzergah.DisplayMember = "GuzergahAdi";
            lbx_Guzergah.DataSource = lbxdata;
        }

        private void TabPage3_Click(object sender, EventArgs e)
        {

        }

        private void Button1_Click(object sender, EventArgs e)
        {

        }

        private void Button3_Click(object sender, EventArgs e)
        {
            int rezervasyonid = Convert.ToInt32(txt_Rezervasyon.Text);
            string MusteriAdSoyad = $"{txt_MusteriAd + " " + txt_MusteriSoyad}";
            string tckimlik = txt_TcKimlik.Text;
            string aciklama = txt_Aciklama.Text;
            CustomerBLL.MusteriKayit(rezervasyonid,MusteriAdSoyad,tckimlik,seferid,neredenid,durakid,aciklama);

        }

        private void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void Lbx_Guzergah_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            seferid = Convert.ToInt32(lbx_Guzergah.SelectedValue);
        }
    }
}
