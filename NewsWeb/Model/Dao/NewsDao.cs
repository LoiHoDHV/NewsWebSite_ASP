using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;
using PagedList;
using System.Web;
using Common;

namespace Model.Dao
{
    public class NewsDao
    {
        NewsWebDbContext db = null;
        public String USER_SESSION = "USER_SESSION";

        public NewsDao()
        {
            db = new NewsWebDbContext();
        }
        public News GetByID(long id)
        {
            return db.News.Find(id);
        }
        public Tag getTag(string id)
        {
            return db.Tags.Find(id);
        }

        public long Insert(News entity)
        {
            db.News.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }


        // List ra trang

        public IEnumerable<News> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<News> model = db.News;

            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Name.Contains(searchString) || x.Name.Contains(searchString));

            }
            return model.OrderByDescending(x => x.ID).ToPagedList(page, pageSize);
        }





        public IEnumerable<News> ListAllbyTag(string tag, int page, int pageSize)
        {
            var model = (from a in db.News
                         join b in db.NewsTags
                         on a.ID equals b.NewsID
                         where b.TagID == tag
                         select new
                         {
                             Name = a.Name,
                             Image = a.Image,
                             Description = a.Description,
                             CreatedDate = a.CreatedDate,
                             ID = a.ID
                         }).AsEnumerable().Select(x => new News()
                         {
                             Name = x.Name,
                             Image = x.Image,
                             Description = x.Description,
                             CreatedDate = x.CreatedDate,
                             ID = x.ID
                         });
            return model.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }

        public long Create(News news)
        {
            // xử lý phần alias

            if (string.IsNullOrEmpty(news.Alias))
            {
                news.Alias = StringHelper.ToUnsignString(news.Name);

            }

            news.CreatedDate = DateTime.Now;
            news.ViewCount = 0;
            news.Status = news.Status;
            db.News.Add(news);
            db.SaveChanges();

            //xử lý tag

            if (!string.IsNullOrEmpty(news.Tags))
            {
                string[] tags = news.Tags.Split(',');
                foreach (var tag in tags)
                {
                    var tagID = StringHelper.ToUnsignString(tag);
                    var existedTag = this.CheckTag(tagID);
                    // insert vào bảng tag
                    if (!existedTag)
                    {
                        this.InsertTag(tagID, tag);


                    }
                    // thêm vào content tag

                    this.InsertNewsTag(news.ID, tagID);

                }



            }
            return news.ID;
        }
        public void RemoveAllContentTag(long newsID)
        {
            db.NewsTags.RemoveRange(db.NewsTags.Where(x => x.NewsID == newsID));
            db.SaveChanges();
        }

        public bool CheckTag(string id)
        {
            return db.Tags.Count(x => x.ID == id) > 0;
        }

        public void InsertTag(String id, string name)
        {
            var tag = new Tag();
            tag.ID = id;
            tag.Name = name;
            db.Tags.Add(tag);
            db.SaveChanges();
        }
        public void InsertNewsTag(long newsID, string tagID)
        {
            var newsTag = new NewsTag();
            newsTag.NewsID = newsID;
            newsTag.TagID = tagID;
            db.NewsTags.Add(newsTag);
            db.SaveChanges();
        }

        public List<Tag> ListTag(long newsID)
        {
            var model = (from a in db.Tags
                         join b in db.NewsTags
                         on a.ID equals b.TagID
                         where b.NewsID == newsID
                         select new
                         {
                             ID = b.TagID,
                             Name = a.Name
                         }).AsEnumerable().Select(x => new Tag()
                         {
                             ID = x.ID,
                             Name = x.Name
                         });
            return model.ToList();
        }

        public bool Update(News entity)
        {
            try
            {
                var news = db.News.Find(entity.ID);
                news.Name = entity.Name;
                news.CategoryID = entity.CategoryID;
                news.Alias = entity.Alias;
                news.Image = entity.Image;
                news.Status = entity.Status;
                news.ViewCount = entity.ViewCount;
                news.SmallDescription = entity.SmallDescription;
                news.Description = entity.Description;

                news.Tags = entity.Tags;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public News ViewDetail(int id)
        {
            return db.News.Find(id);
        }

        public bool Delete(int id)
        {
            try
            {
                var user = db.News.Find(id);
                db.News.Remove(user);

                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public List<News> ListNews(int top)
        {
            return db.News.OrderByDescending(x => x.CreatedDate).Take(top).ToList();
        }


        ///List ra trang giao diện 
        public IEnumerable<News> ListNews(int page, int pageSize)
        {

            IQueryable<News> model = db.News;
            return model.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }

        public IEnumerable<News> ListByCategory(int page, int pageSize, long cateID)
        {
            var model = (from a in db.News
                         join b in db.NewsCategories
                         on a.CategoryID equals b.ID
                         where b.ID.Equals(cateID)
                         select new
                         {
                             Name = a.Name,
                             Image = a.Image,
                             Alias = a.Alias,
                             SmallDescription = a.SmallDescription,
                             Description = a.Description,
                             CreatedDate = a.CreatedDate,
                             Tags = a.Tags,
                             ID = a.ID,
                             CategoryName = b.Name
                         }).AsEnumerable().Select(x => new News()
                         {
                             Name = x.Name,
                             Image = x.Image,
                             Alias = x.Alias,
                             SmallDescription = x.SmallDescription,
                             Description = x.Description,
                             CreatedDate = x.CreatedDate,
                             Tags = x.Tags,
                             ID = x.ID,
                             


                         });
            return model.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);


            //var model = (from a in db.News
            //             join b in db.NewsTags
            //             on a.ID equals b.NewsID
            //             where b.TagID == tag
            //             select new
            //             {
            //                 Name = a.Name,
            //                 Image = a.Image,
            //                 Description = a.Description,
            //                 CreatedDate = a.CreatedDate,
            //                 ID = a.ID
            //             }).AsEnumerable().Select(x => new News()
            //             {
            //                 Name = x.Name,
            //                 Image = x.Image,
            //                 Description = x.Description,
            //                 CreatedDate = x.CreatedDate,
            //                 ID = x.ID
            //             });
            //return model.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }




    }
}
