import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Bar = sequelize.define('bar', {
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
    unique: "bar_name_key"
  },
  adresse: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  horaire: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  image1: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  image2: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  image3: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  image4: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  image5: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  url_map: {
    type: DataTypes.TEXT,
    allowNull: true
  },
}, {
  sequelize,
  tableName: 'bar',
  schema: 'public',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "bar_name_key",
      unique: true,
      fields: [
        { name: "name" },
      ]
    },
    {
      name: "bar_pkey",
      unique: true,
      fields: [
        { name: "id" },
      ]
    },
  ]
});

export default Bar;
