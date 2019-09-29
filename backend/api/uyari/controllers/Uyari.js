'use strict';

/**
 * Uyari.js controller
 *
 * @description: A set of functions called "actions" for managing `Uyari`.
 */

module.exports = {

  /**
   * Retrieve uyari records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.uyari.search(ctx.query);
    } else {
      return strapi.services.uyari.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a uyari record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.uyari.fetch(ctx.params);
  },

  /**
   * Count uyari records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.uyari.count(ctx.query);
  },

  /**
   * Create a/an uyari record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.uyari.add(ctx.request.body);
  },

  /**
   * Update a/an uyari record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.uyari.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an uyari record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.uyari.remove(ctx.params);
  }
};
