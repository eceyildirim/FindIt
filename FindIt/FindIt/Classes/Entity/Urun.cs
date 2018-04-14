using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace FindIt
{
    public class Urun : IEntity
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string ad;

        public string Ad
        {
            get { return ad; }
            set { ad = value; }
        }
        private decimal fiyat;

        public decimal Fiyat
        {
            get { return fiyat; }
            set { fiyat = value; }
        }
        private string barkod;

        public string Barkod
        {
            get { return barkod; }
            set { barkod = value; }
        }
        private AltKategori altKategoriId;

        public AltKategori AltKategoriId
        {
            get { return altKategoriId; }
            set { altKategoriId = value; }
        }
        private int stok;

        public int Stok
        {
            get { return stok; }
            set { stok = value; }
        }
        private Personel personelId;

        public Personel PersonelId
        {
            get { return personelId; }
            set { personelId = value; }
        }
        private string ozellikler;

        public string Ozellikler
        {
            get { return ozellikler; }
            set { ozellikler = value; }
        }
        public Urun()
        {
            this.Id = 0;
            this.Ad = "";
            this.AltKategoriId = new AltKategori();
            this.Barkod = "";
            this.Fiyat = 0;
            this.Stok = 0;
            this.Ozellikler = "";
            this.PersonelId = new Personel();
        }
    }
}
