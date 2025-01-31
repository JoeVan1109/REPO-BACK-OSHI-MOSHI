import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Topping = sequelize.define('topping', {
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
    unique: "topping_name_key"
  }
}, {
  sequelize,
  tableName: 'topping',
  schema: 'public',
  timestamps: true,
  indexes: [
    {
      name: "topping_name_key",
      unique: true,
      fields: [
        { name: "name" },
      ]
    },
    {
      name: "topping_pkey",
      unique: true,
      fields: [
        { name: "id" },
      ]
    },
  ]
});

export default Topping;