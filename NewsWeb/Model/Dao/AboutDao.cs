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
    public class AboutDao
    {
        NewsWebDbContext db = null;
        public String USER_SESSION = "USER_SESSION";
        public AboutDao()
        {
            db = new NewsWebDbContext();
        }

        public IEnumerable<About> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<About> model = (IQueryable<About>)db.Abouts;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Name.Contains(searchString));
            }
            return (IEnumerable<About>)model.OrderBy(x => x.ID).ToPagedList(page, pageSize);
        }
        public List<About> ListAll()
        {
            return db.Abouts.Where(x => x.Status == true).ToList();
        }
        public About getLatest()
        {
            return db.Abouts.Where(x => x.Status == true).Take(1).FirstOrDefault();
        }

        public long Create(About ab)
        {
            ab.Name = ab.Name;
            // xu ly alias
            if (!string.IsNullOrEmpty(ab.Name))
            {
                ab.Alias = StringHelper.ToUnsignString(ab.Name);
            }
            ab.Status = ab.Status;
            ab.SmallDescription = ab.SmallDescription;
            ab.Description = ab.Description;
            ab.CreatedDate = DateTime.Now;
            db.Abouts.Add(ab);
            db.SaveChanges();

            return ab.ID;

        }

        public bool Update(About entity) 
        {
            try
            {
                var ab = db.Abouts.Find(entity.ID);
                ab.Name = entity.Name;
                // xy ly alis
                if(!string.IsNullOrEmpty(ab.Name))
                {
                    ab.Alias = StringHelper.ToUnsignString((string)entity.Name);  
                    
                }
                ab.Status = entity.Status;
                ab.SmallDescription = entity.SmallDescription;
                ab.Description  =   entity.Description;
                ab.ModifiedDate = DateTime.Now;
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
                var about = db.Abouts.Find(id);
                db.Abouts.Remove(about);
                db.SaveChanges();
                return true;
            }catch(Exception ex)
            {
                return false;
            }
        }

        public About ViewDetail(long id)
        {
            return db.Abouts.Find(id);
        }

        

        
    }

    
}
