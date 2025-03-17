import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const BubbleTea = sequelize.define('bubble_tea', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: "bubble_tea_name_key"
  },
  image: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  icone: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  milk_name: {
    type: DataTypes.STRING(255),
    allowNull: true,
    references: {
      model: 'milk',
      key: 'name'
    }
  }
}, {
  sequelize,
  tableName: 'bubble_tea',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "bubble_tea_name_key",
      unique: true,
      fields: ["name"]
    },
    {
      name: "bubble_tea_pkey",
      unique: true,
      fields: ["id"]
    },
  ]
});

export default BubbleTea;