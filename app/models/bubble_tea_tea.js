import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const BubbleTeaTea = sequelize.define('bubble_tea_tea', {
  bubble_tea_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    references: {
      model: 'bubble_tea',
      key: 'id'
    }
  },
  tea_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    references: {
      model: 'tea',
      key: 'id'
    }
  }
}, {
  sequelize,
  tableName: 'bubble_tea_tea',
  schema: 'public',
  timestamps: false,
  indexes: [
    {
      name: "bubble_tea_tea_pkey",
      unique: true,
      fields: [
        { name: "bubble_tea_id" },
        { name: "tea_id" },
      ]
    },
  ]
});

export default BubbleTeaTea;