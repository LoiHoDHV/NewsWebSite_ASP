using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class FooterDao
    {
        NewsWebDbContext db = null;

        public FooterDao()
        {
            db = new NewsWebDbContext();
        }

        public Footer GetFooter()
        {
            return db.Footers.FirstOrDefault(x => x.Status == true);
        }
    }
}
