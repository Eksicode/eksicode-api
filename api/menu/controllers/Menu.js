'use strict';

/**
 * Menu.js controller
 *
 * @description: A set of functions called "actions" for managing `Menu`.
 */

module.exports = {

  /**
   * Retrieve menu records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.menu.search(ctx.query);
    } else {
      return strapi.services.menu.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a menu record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.menu.fetch(ctx.params);
  },

  /**
   * Count menu records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.menu.count(ctx.query);
  },

  /**
   * Create a/an menu record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.menu.add(ctx.request.body);
  },

  /**
   * Update a/an menu record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.menu.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an menu record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.menu.remove(ctx.params);
  }
};
