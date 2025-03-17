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
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: "topping_name_key"
  }
}, {
  sequelize,
  tableName: 'topping',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "topping_name_key",
      unique: true,
      fields: ["name"]
    },
    {
      name: "topping_pkey",
      unique: true,
      fields: ["id"]
    },
  ]
});

export default Topping;