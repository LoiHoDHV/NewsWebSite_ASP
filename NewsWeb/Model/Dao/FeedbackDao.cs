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
    
    public class FeedbackDao
    {
        NewsWebDbContext db = null;
        public String USER_SESSION = "USER_SESSION";

        public FeedbackDao()
        {
            db = new NewsWebDbContext();
        }

        // list ra trang timf kiem

        public IEnumerable<FeedBack> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<FeedBack> model = db.FeedBacks;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Name.Contains(searchString));
            }
            return model.OrderBy(x => x.ID).ToPagedList(page, pageSize);
        }

        public List<FeedBack> ListAll()
        {
            return db.FeedBacks.Where(x => x.Status == true).ToList();
        }

        public FeedBack ViewDetail(long id)
        {
            return db.FeedBacks.Find(id);
        }

        public long Create(FeedBack fBack)
        {
            //
            fBack.Name = fBack.Name;
            fBack.Phone = fBack.Phone; 
            fBack.Email = fBack.Email;
            fBack.Content = fBack.Content;
            fBack.Address = fBack.Address;
            fBack.CreatedDate = DateTime.Now;
            fBack.Status = fBack.Status;
            
            db.FeedBacks.Add(fBack);
            db.SaveChanges();
            return fBack.ID; 
        }

        public bool Delete(int id)
        {
            try
            {
                var fback = db.FeedBacks.Find(id);
                db.FeedBacks.Remove(fback);
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

           
        }

    }
}
