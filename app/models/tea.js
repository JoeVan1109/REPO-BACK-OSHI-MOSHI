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
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: "tea_name_key"
  }
}, {
  sequelize,
  tableName: 'tea',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "tea_name_key",
      unique: true,
      fields: ["name"]
    },
    {
      name: "tea_pkey",
      unique: true,
      fields: ["id"]
    },
  ]
});

export default Tea;