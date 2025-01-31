const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('bubble_tea', {
    id: {
      autoIncrement: true,
      autoIncrementIdentity: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    name: {
      type: DataTypes.TEXT,
      allowNull: false,
      unique: "bubble_tea_name_key"
    },
    prixL: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    prixXL: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    image: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    icone: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    milk_name: {
      type: DataTypes.TEXT,
      allowNull: true,
      references: {
        model: 'milk',
        key: 'name'
      }
    }
  }, {
    sequelize,
    tableName: 'bubble_tea',
    schema: 'public',
    timestamps: true,
    indexes: [
      {
        name: "bubble_tea_name_key",
        unique: true,
        fields: [
          { name: "name" },
        ]
      },
      {
        name: "bubble_tea_pkey",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
