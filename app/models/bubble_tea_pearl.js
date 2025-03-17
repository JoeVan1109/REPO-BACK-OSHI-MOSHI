import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const BubbleTeaPearl = sequelize.define('bubble_tea_pearl', {
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
  pearl_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: false,
    references: {
      model: 'pearl',
      key: 'id'
    }
  }
}, {
  sequelize,
  tableName: 'bubble_tea_pearl',
  timestamps: false,
  indexes: [
    {
      name: "bubble_tea_pearl_pkey",
      unique: true,
      fields: ["bubble_tea_id", "pearl_id"]
    }
  ]
});

export default BubbleTeaPearl;
