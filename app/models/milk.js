import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Milk = sequelize.define('milk', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: "milk_name_key"
  }
}, {
  sequelize,
  tableName: 'milk',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "milk_name_key",
      unique: true,
      fields: ["name"]
    },
    {
      name: "milk_pkey",
      unique: true,
      fields: ["id"]
    },
  ]
});

export default Milk;