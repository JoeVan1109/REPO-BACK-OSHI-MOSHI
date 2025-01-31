import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Pearl = sequelize.define('pearl', {
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
    unique: "pearl_name_key"
  }
}, {
  sequelize,
  tableName: 'pearl',
  schema: 'public',
  timestamps: true,
  indexes: [
    {
      name: "pearl_name_key",
      unique: true,
      fields: [
        { name: "name" },
      ]
    },
    {
      name: "pearl_pkey",
      unique: true,
      fields: [
        { name: "id" },
      ]
    },
  ]
});

export default Pearl;