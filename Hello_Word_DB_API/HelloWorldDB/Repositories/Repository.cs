﻿using HelloWorldDB.Services;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace HelloWorldDB.Repositories
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        public readonly DbContext _contex;

        public Repository(DbContext context)
        {
            _contex = context ?? throw new ArgumentNullException(nameof(context));
        }

        /// <summary>
        /// Gets the <see cref="TEntity"/> when a correct <paramref name="id"/> is supplied. 
        /// </summary>
        /// <param name="id"></param>
        /// <returns>A <typeparamref name="TEntity"/>.</returns>
        public async Task<TEntity> GetAsync(int id)
        {
            return await _contex.Set<TEntity>().FindAsync(id);
        }

        /// <summary>
        /// Gets the <see cref="TEntity"/> when a correct <paramref name="id"/> is supplied. 
        /// </summary>
        /// <param name="id"></param>
        /// <returns>A <typeparamref name="TEntity"/>.</returns>
        public async Task<TEntity> GetAsync(string id)
        {
            return await _contex.Set<TEntity>().FindAsync(id);
        }

        /// <summary>
        /// Gets a <see cref="IEnumerable{T}"/> of the <see cref="TEntity"/>
        /// </summary>
        /// <returns><see cref="IEnumerable{T}"/></returns>
        public async Task<IEnumerable<TEntity>> GetAllAsync()
        {
            return await _contex.Set<TEntity>().ToListAsync();
        }

        // Do we need this?
        public IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> expression)
        {
            return _contex.Set<TEntity>().Where(expression);
        }

        // <summary>
        /// Adds a <see cref="TEntity"/> to the DB.
        /// </summary>
        /// <param name="entity"></param>
        public void Add(TEntity entity)
        {
            _contex.Set<TEntity>().Add(entity);
        }


        /// <summary>
        /// Adds a <see cref="IEnumerable{T}"/> of <see cref="TEntity"/> to the DB.
        /// </summary>
        /// <param name="entities"></param>
        public void AddRage(IEnumerable<TEntity> entities)
        {
            _contex.Set<IEnumerable<TEntity>>().AddRange(entities);
        }

        /// <summary>
        /// Removes a <see cref="TEntity"/> from the DB.
        /// </summary>
        /// <param name="entity"></param>
        public void Remove(TEntity entity)
        {
            _contex.Set<TEntity>().Remove(entity);
        }


        /// <summary>
        /// Removes an <see cref="IEnumerable{T}"/> of <see cref="TEntity"/> from the DB.
        /// </summary>
        /// <param name="entities"></param>
        public void RemoveRange(IEnumerable<TEntity> entities)
        {
            _contex.Set<IEnumerable<TEntity>>().RemoveRange(entities);
        }


        /// <summary>
        /// Saves changes made in the <see cref="DbContexts"/> to the DB.
        /// </summary>
        public async Task SaveAsync()
        {
            await _contex.SaveChangesAsync();
        }

        /// <summary>
        /// Saves changes made in the <see cref="DbContexts"/> to the DB.
        /// </summary>
        public void Save()
        {
            _contex.SaveChanges();
        }
    }
}
