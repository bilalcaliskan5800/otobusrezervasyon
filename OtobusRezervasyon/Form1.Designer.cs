namespace OtobusRezervasyon
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.button2 = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.cmb_to = new System.Windows.Forms.ComboBox();
            this.cmb_from = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.label4 = new System.Windows.Forms.Label();
            this.lbx_Guzergah = new System.Windows.Forms.ListBox();
            this.button1 = new System.Windows.Forms.Button();
            this.txt_MusteriAd = new System.Windows.Forms.TextBox();
            this.txt_MusteriSoyad = new System.Windows.Forms.TextBox();
            this.txt_TcKimlik = new System.Windows.Forms.TextBox();
            this.txt_Aciklama = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.txt_Rezervasyon = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(646, 291);
            this.tabControl1.TabIndex = 5;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.button2);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.cmb_to);
            this.tabPage1.Controls.Add(this.cmb_from);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(638, 265);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Durak Seçimi";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(531, 231);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(95, 23);
            this.button2.TabIndex = 13;
            this.button2.Text = "Sonraki";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(303, 100);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(36, 20);
            this.label3.TabIndex = 9;
            this.label3.Text = "==>";
            // 
            // cmb_to
            // 
            this.cmb_to.FormattingEnabled = true;
            this.cmb_to.Location = new System.Drawing.Point(416, 100);
            this.cmb_to.Name = "cmb_to";
            this.cmb_to.Size = new System.Drawing.Size(153, 21);
            this.cmb_to.TabIndex = 8;
            this.cmb_to.SelectedIndexChanged += new System.EventHandler(this.Cmb_to_SelectedIndexChanged);
            // 
            // cmb_from
            // 
            this.cmb_from.FormattingEnabled = true;
            this.cmb_from.Location = new System.Drawing.Point(122, 100);
            this.cmb_from.Name = "cmb_from";
            this.cmb_from.Size = new System.Drawing.Size(153, 21);
            this.cmb_from.TabIndex = 7;
            this.cmb_from.SelectedIndexChanged += new System.EventHandler(this.Cmb_from_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(359, 104);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(54, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "NEREYE:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(57, 105);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "NEREDEN:";
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.button1);
            this.tabPage2.Controls.Add(this.label4);
            this.tabPage2.Controls.Add(this.lbx_Guzergah);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(638, 265);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Sefer Seçimi";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.label9);
            this.tabPage3.Controls.Add(this.txt_Rezervasyon);
            this.tabPage3.Controls.Add(this.button3);
            this.tabPage3.Controls.Add(this.label8);
            this.tabPage3.Controls.Add(this.label7);
            this.tabPage3.Controls.Add(this.label6);
            this.tabPage3.Controls.Add(this.label5);
            this.tabPage3.Controls.Add(this.txt_Aciklama);
            this.tabPage3.Controls.Add(this.txt_TcKimlik);
            this.tabPage3.Controls.Add(this.txt_MusteriSoyad);
            this.tabPage3.Controls.Add(this.txt_MusteriAd);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(638, 265);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Yolcu Bilgi Formu";
            this.tabPage3.UseVisualStyleBackColor = true;
            this.tabPage3.Click += new System.EventHandler(this.TabPage3_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 6);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(92, 13);
            this.label4.TabIndex = 13;
            this.label4.Text = "GUZERGAHLAR:";
            // 
            // lbx_Guzergah
            // 
            this.lbx_Guzergah.FormattingEnabled = true;
            this.lbx_Guzergah.Location = new System.Drawing.Point(8, 22);
            this.lbx_Guzergah.Name = "lbx_Guzergah";
            this.lbx_Guzergah.Size = new System.Drawing.Size(618, 212);
            this.lbx_Guzergah.TabIndex = 12;
            this.lbx_Guzergah.SelectedIndexChanged += new System.EventHandler(this.Lbx_Guzergah_SelectedIndexChanged_1);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(531, 239);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(95, 23);
            this.button1.TabIndex = 14;
            this.button1.Text = "Sonraki";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.Button1_Click);
            // 
            // txt_MusteriAd
            // 
            this.txt_MusteriAd.Location = new System.Drawing.Point(80, 30);
            this.txt_MusteriAd.Name = "txt_MusteriAd";
            this.txt_MusteriAd.Size = new System.Drawing.Size(125, 20);
            this.txt_MusteriAd.TabIndex = 0;
            // 
            // txt_MusteriSoyad
            // 
            this.txt_MusteriSoyad.Location = new System.Drawing.Point(80, 66);
            this.txt_MusteriSoyad.Name = "txt_MusteriSoyad";
            this.txt_MusteriSoyad.Size = new System.Drawing.Size(125, 20);
            this.txt_MusteriSoyad.TabIndex = 1;
            this.txt_MusteriSoyad.TextChanged += new System.EventHandler(this.TextBox2_TextChanged);
            // 
            // txt_TcKimlik
            // 
            this.txt_TcKimlik.Location = new System.Drawing.Point(80, 105);
            this.txt_TcKimlik.Name = "txt_TcKimlik";
            this.txt_TcKimlik.Size = new System.Drawing.Size(125, 20);
            this.txt_TcKimlik.TabIndex = 2;
            // 
            // txt_Aciklama
            // 
            this.txt_Aciklama.Location = new System.Drawing.Point(80, 145);
            this.txt_Aciklama.Multiline = true;
            this.txt_Aciklama.Name = "txt_Aciklama";
            this.txt_Aciklama.Size = new System.Drawing.Size(125, 92);
            this.txt_Aciklama.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(-1, 33);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(25, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Adı:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(3, 148);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 13);
            this.label6.TabIndex = 5;
            this.label6.Text = "Açıklama:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(0, 108);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(74, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "T.C Kimlik No:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(0, 69);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(42, 13);
            this.label8.TabIndex = 7;
            this.label8.Text = "Soyadı:";
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(531, 239);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(95, 23);
            this.button3.TabIndex = 15;
            this.button3.Text = "İşlemi Tamamla";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.Button3_Click);
            // 
            // txt_Rezervasyon
            // 
            this.txt_Rezervasyon.Location = new System.Drawing.Point(385, 37);
            this.txt_Rezervasyon.Name = "txt_Rezervasyon";
            this.txt_Rezervasyon.Size = new System.Drawing.Size(100, 20);
            this.txt_Rezervasyon.TabIndex = 16;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(296, 37);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(83, 13);
            this.label9.TabIndex = 17;
            this.label9.Text = "Rezervasyon id:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(642, 292);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "Otobus Rezervasyon Sistemi";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmb_to;
        private System.Windows.Forms.ComboBox cmb_from;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ListBox lbx_Guzergah;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txt_Aciklama;
        private System.Windows.Forms.TextBox txt_TcKimlik;
        private System.Windows.Forms.TextBox txt_MusteriSoyad;
        private System.Windows.Forms.TextBox txt_MusteriAd;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txt_Rezervasyon;
    }
}

