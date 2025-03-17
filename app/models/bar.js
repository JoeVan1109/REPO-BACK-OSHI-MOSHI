import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Bar = sequelize.define('bar', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: true
  },
  adresse: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  horaire: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  image1: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  image2: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  image3: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  image4: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  image5: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  url_map: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
}, {
  sequelize,
  tableName: 'bar',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "bar_name_key",
      unique: true,
      fields: ["name"]
    },
    {
      name: "bar_pkey",
      unique: true,
      fields: ["id"]
    },
  ]
});

export default Bar;
