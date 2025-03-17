import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const BubbleTeaTopping = sequelize.define('bubble_tea_topping', {
  bubble_tea_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: false,
    references: {
      model: 'bubble_tea',
      key: 'id'
    }
  },
  topping_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: false,
    references: {
      model: 'topping',
      key: 'id'
    }
  }
}, {
  sequelize,
  tableName: 'bubble_tea_topping',
  schema: 'public',
  timestamps: false,
  indexes: [
    {
      name: "bubble_tea_topping_pkey",
      unique: true,
      fields: ["bubble_tea_id", "topping_id"]
    },
  ]
});

export default BubbleTeaTopping;