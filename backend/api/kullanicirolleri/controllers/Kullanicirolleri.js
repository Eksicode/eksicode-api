'use strict';

/**
 * Kullanicirolleri.js controller
 *
 * @description: A set of functions called "actions" for managing `Kullanicirolleri`.
 */

module.exports = {

  /**
   * Retrieve kullanicirolleri records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.kullanicirolleri.search(ctx.query);
    } else {
      return strapi.services.kullanicirolleri.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a kullanicirolleri record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.kullanicirolleri.fetch(ctx.params);
  },

  /**
   * Count kullanicirolleri records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.kullanicirolleri.count(ctx.query);
  },

  /**
   * Create a/an kullanicirolleri record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.kullanicirolleri.add(ctx.request.body);
  },

  /**
   * Update a/an kullanicirolleri record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.kullanicirolleri.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an kullanicirolleri record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.kullanicirolleri.remove(ctx.params);
  }
};
