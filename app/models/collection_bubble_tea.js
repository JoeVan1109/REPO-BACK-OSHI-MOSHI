const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('collection_bubble_tea', {
    collection_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'collection',
        key: 'id'
      }
    },
    bubble_tea_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'bubble_tea',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'collection_bubble_tea',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "collection_bubble_tea_pkey",
        unique: true,
        fields: [
          { name: "collection_id" },
          { name: "bubble_tea_id" },
        ]
      },
    ]
  });
};
