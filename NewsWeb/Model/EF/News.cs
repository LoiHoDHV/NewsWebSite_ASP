namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class News
    {
        public int ID { get; set; }

        [StringLength(250)]
        [Display(Name = "Tên bài viết")]
        public string Name { get; set; }
        [Display(Name = "Danh mục")]
        public long? CategoryID { get; set; }

        [StringLength(250)]
        [Display(Name = "Đường dẫn Alias")]
        public string Alias { get; set; }

        [StringLength(250)]
        [Display(Name = "Hình ảnh đại diện bài viết")]
        public string Image { get; set; }
        [Display(Name = "Trạng thái bài viết")]
        public bool? Status { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Miêu tả ngắn")]
        public string SmallDescription { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Nội dung bài viết")]
        public string Description { get; set; }

        public int? ViewCount { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(500)]
        [Display(Name = "Loại tag")]
        public string Tags { get; set; }
    }
}
