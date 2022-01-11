using Common;
using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class NewsCategoryDao
    {
        NewsWebDbContext db = null;
        public String USER_SESSION = "USER_SESSION";


        public NewsCategoryDao()
        {
            db = new NewsWebDbContext();
        }

        // list ra trang tim kiem
        public IEnumerable<NewsCategory> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<NewsCategory> model = db.NewsCategories;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x=>x.Name.Contains(searchString));
            }
            return model.OrderBy(x => x.ID).ToPagedList(page, pageSize);
        }

        

        public List<NewsCategory> ListAll()
        {
            return db.NewsCategories.Where(x => x.Status == true).ToList();
        }

        public NewsCategory ViewDetail(long id)
        {
            return db.NewsCategories.Find(id);
        }

        public long Create(NewsCategory newsCategory)
        {
            // xử lý phần Alias
            if (string.IsNullOrEmpty(newsCategory.MetaTitle))
            {
                newsCategory.MetaTitle = StringHelper.ToUnsignString(newsCategory.Name);
            }
            newsCategory.DisplayOrder = (int?)newsCategory.ID;
            newsCategory.Status = newsCategory.Status;
            newsCategory.CreatedDate = DateTime.Now;
            db.NewsCategories.Add(newsCategory);
            db.SaveChanges();

            return newsCategory.ID;
            

            
            

        }

        public bool Update(NewsCategory entity)
        {
            try
            {
                var newsCategory = db.NewsCategories.Find(entity.ID);
                newsCategory.Name = entity.Name;
                // xu ly alias
                if (!string.IsNullOrEmpty(entity.Name))
                {
                    newsCategory.MetaTitle = StringHelper.ToUnsignString(entity.Name);
                }
                newsCategory.DisplayOrder = (int?)entity.ID;
                newsCategory.Status = entity.Status;
                newsCategory.ModifiedDate = DateTime.Now;
                db.SaveChanges();

                return true;
            }catch (Exception ex)
            {
                return false;
            }
        }

        public bool Delete(int id)
        {
            try
            {
                var newCat = db.NewsCategories.Find(id);
                db.NewsCategories.Remove(newCat);
                db.SaveChanges();
                return true;
            }catch(Exception ex)
            {
                return false;
            }
        }


        public string GetCateName(long ID)
        {
            var entity = db.NewsCategories.Find(ID);
            string cateName = entity.Name;
            return cateName;
        }

        

         
        

    }
}
