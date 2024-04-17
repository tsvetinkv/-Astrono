using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories
{
    public interface IEfRepository<T> : IDisposable
    {
        void Add(T entity);
        IQueryable<T> All();
        T GetById(params object[] id);
        void Delete(T entity);
        void Update(T entity);
        Task<int> SaveChangesAsync();

    }
}
