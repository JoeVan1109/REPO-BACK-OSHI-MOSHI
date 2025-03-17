import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const BubbleTeaTea = sequelize.define('bubble_tea_tea', {
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
  tea_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: false,
    references: {
      model: 'tea',
      key: 'id'
    }
  }
}, {
  sequelize,
  tableName: 'bubble_tea_tea',
  timestamps: false,
  indexes: [
    {
      name: "bubble_tea_tea_pkey",
      unique: true,
      fields: ["bubble_tea_id", "tea_id"]
    },
  ]
});

export default BubbleTeaTea;