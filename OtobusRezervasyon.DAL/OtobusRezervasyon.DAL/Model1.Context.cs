﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OtobusRezervasyon.DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SeferiEntities : DbContext
    {
        public SeferiEntities()
            : base("name=SeferiEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Duraklar> Duraklars { get; set; }
        public virtual DbSet<Guzergahlar> Guzergahlars { get; set; }
        public virtual DbSet<Rezervasyonlar> Rezervasyonlars { get; set; }
        public virtual DbSet<Seferler> Seferlers { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<GuzergahDuraklari> GuzergahDuraklaris { get; set; }
    }
}
