namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NewsTag")]
    public partial class NewsTag
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long NewsID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string TagID { get; set; }
    }
}
