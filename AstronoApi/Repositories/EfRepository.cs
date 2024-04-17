using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories
{
    public class EfRepository<T> : IdentityDbContext, IEfRepository<T> where T : class
    {
        protected DbSet<T> DbSet { get; set; }
        protected AstronoDbContext DbContext { get; set; }

        public EfRepository(AstronoDbContext dbContext)
        {
            this.DbSet = dbContext.Set<T>();
            this.DbContext = dbContext;
        }

        public void Add(T entity)
        {
            var entry = this.DbContext.Entry(entity);
            if (entry.State != EntityState.Detached)
            {
                entry.State = EntityState.Added;
            }
            else
            {
                this.DbSet.Add(entity);
            }
        }
        public IQueryable<T> All()
        {
            return this.DbSet.AsQueryable();
        }

        public T GetById(params object[] id)
        {
            return this.DbSet.Find(id);
        }

        public void Delete(T entity)
        {
            var entry = this.DbContext.Entry(entity);
            if (entry.State != EntityState.Deleted)
            {
                entry.State = EntityState.Deleted;
            }
            else
            {
                this.DbContext.Attach(entity);
                this.DbContext.Remove(entity);
            }
        }


        public void Update(T entity)
        {
            var entry = this.DbContext.Entry(entity);
            if (entry.State == EntityState.Detached)
            {
                this.DbContext.Attach(entity);
            }

            entry.State = EntityState.Modified;
        }

        public async Task<int> SaveChangesAsync()
        {
           return await DbContext.SaveChangesAsync();
           
        }

        public override void Dispose()
        {
            if (this.DbContext != null)
            {
                this.DbContext.Dispose();
            }
        }
    }
}