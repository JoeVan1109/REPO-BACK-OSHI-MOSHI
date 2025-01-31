import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Tea = sequelize.define('tea', {
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
    unique: "tea_name_key"
  }
}, {
  sequelize,
  tableName: 'tea',
  schema: 'public',
  timestamps: true,
  indexes: [
    {
      name: "tea_name_key",
      unique: true,
      fields: [
        { name: "name" },
      ]
    },
    {
      name: "tea_pkey",
      unique: true,
      fields: [
        { name: "id" },
      ]
    },
  ]
});

export default Tea;