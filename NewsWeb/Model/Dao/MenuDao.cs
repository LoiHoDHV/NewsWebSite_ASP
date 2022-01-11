using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class MenuDao
    {
        NewsWebDbContext db = null;

        public MenuDao()
        {
            db = new NewsWebDbContext();
        }


        public List<Menu> ListMenu()
        {
           
            return db.Menus.Where(x => x.Status == true).OrderBy(x => x.DisplayOrder).ToList();
        }

        
    }
}
