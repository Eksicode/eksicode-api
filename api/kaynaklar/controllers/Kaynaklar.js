'use strict';

/**
 * Kaynaklar.js controller
 *
 * @description: A set of functions called "actions" for managing `Kaynaklar`.
 */

module.exports = {

  /**
   * Retrieve kaynaklar records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.kaynaklar.search(ctx.query);
    } else {
      return strapi.services.kaynaklar.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a kaynaklar record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.kaynaklar.fetch(ctx.params);
  },

  /**
   * Count kaynaklar records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.kaynaklar.count(ctx.query);
  },

  /**
   * Create a/an kaynaklar record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.kaynaklar.add(ctx.request.body);
  },

  /**
   * Update a/an kaynaklar record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.kaynaklar.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an kaynaklar record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.kaynaklar.remove(ctx.params);
  }
};
