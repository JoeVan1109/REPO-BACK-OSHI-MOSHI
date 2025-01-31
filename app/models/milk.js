import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Milk = sequelize.define('milk', {
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
    unique: "milk_name_key"
  }
}, {
  sequelize,
  tableName: 'milk',
  schema: 'public',
  timestamps: true,
  indexes: [
    {
      name: "milk_name_key",
      unique: true,
      fields: [
        { name: "name" },
      ]
    },
    {
      name: "milk_pkey",
      unique: true,
      fields: [
        { name: "id" },
      ]
    },
  ]
});

export default Milk;