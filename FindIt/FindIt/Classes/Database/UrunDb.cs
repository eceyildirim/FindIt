using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;

namespace FindIt
{
    public class UrunDb : MainDb
    {
        public override void Insert(IEntity entity)
        {
            throw new NotImplementedException();
        }

        public override void Delete(IEntity entity)
        {
            throw new NotImplementedException();
        }

        public override void Update(IEntity entity)
        {
            throw new NotImplementedException();
        }

        public override System.Data.DataTable Lists(IEntity entity)
        {
            throw new NotImplementedException();
        }

    }
}
