const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('bubble_tea_pearl', {
    bubble_tea_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'bubble_tea',
        key: 'id'
      }
    },
    pearl_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'pearl',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'bubble_tea_pearl',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "bubble_tea_pearl_pkey",
        unique: true,
        fields: [
          { name: "bubble_tea_id" },
          { name: "pearl_id" },
        ]
      },
    ]
  });
};
