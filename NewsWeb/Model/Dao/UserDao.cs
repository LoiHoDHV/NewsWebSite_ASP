using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;
using PagedList;
namespace Model.Dao
{
    public class UserDao
    {
        NewsWebDbContext db = null;

        public UserDao()
        {
            db = new NewsWebDbContext();
        }

        //insert
        public long Insert(User entity)
        {
            db.Users.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }

        //list ra user
        public IEnumerable<User> ListAllPaging(string searchString, int page , int pageSize )
        {
            IQueryable<User> model = db.Users;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x=>x.Username.Contains(searchString) || x.Name.Contains(searchString)).OrderByDescending(x=>x.ID);
            }
            return model.OrderByDescending(x=>x.ID).ToPagedList(page, pageSize);
        }

        public bool Update(User entity)
        {
            try
            {
                var user = db.Users.Find(entity.ID);

                user.Name = entity.Name;
                if (!string.IsNullOrEmpty(entity.Password))
                {
                    user.Password = entity.Password;
                }
                user.Email = entity.Email;
                user.Phone = entity.Phone;
                user.ModifiedDate = DateTime.Now;
                user.Status = entity.Status;
                db.SaveChanges();
                return true;
            } catch (Exception ex)
            {
                //logging
                return false;
            }
        }

        // lay ra User ằng username
        public User GetById(string userName)
        {
            return db.Users.SingleOrDefault(x => x.Username == userName);
        }
        public User ViewDetail(int id)
        {
            return db.Users.Find(id);
        }
        
        public int Login(string userName, string passWord)
        {
            var result = db.Users.SingleOrDefault(x => x.Username == userName);
            
            if (result == null)
            {
                // không có
                return 0;
            }
            else
            {
                if(result.Status == false)
                {
                    // không hoạt động
                    return -1;
                }
                else
                {
                    if (result.Password == passWord)
                    {
                        // ok
                        return 1;
                    }
                    else
                    {
                        // lỗi gì gì đấy
                        return -2;
                    }
                }
            }
        }
        public bool Delete(int id)
        {
            try
            {
                var user = db.Users.Find(id);
                db.Users.Remove(user);

                db.SaveChanges();
                return true;
            }catch(Exception )
            {
                return false;
            }
        }
    }
}
