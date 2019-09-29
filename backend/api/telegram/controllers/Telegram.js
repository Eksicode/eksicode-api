'use strict';

/**
 * Telegram.js controller
 *
 * @description: A set of functions called "actions" for managing `Telegram`.
 */

module.exports = {

  /**
   * Retrieve telegram records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.telegram.search(ctx.query);
    } else {
      return strapi.services.telegram.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a telegram record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.telegram.fetch(ctx.params);
  },

  /**
   * Count telegram records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.telegram.count(ctx.query);
  },

  /**
   * Create a/an telegram record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.telegram.add(ctx.request.body);
  },

  /**
   * Update a/an telegram record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.telegram.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an telegram record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.telegram.remove(ctx.params);
  }
};
