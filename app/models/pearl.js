import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Pearl = sequelize.define('pearl', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: "pearl_name_key"
  }
}, {
  sequelize,
  tableName: 'pearl',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "pearl_name_key",
      unique: true,
      fields: ["name"]
    },
    {
      name: "pearl_pkey",
      unique: true,
      fields: ["id"]
    },
  ]
});

export default Pearl;