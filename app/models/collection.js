import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Collection = sequelize.define('collection', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: "collection_name_key"
  },
  image_collection: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  prix_l: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  prix_xl: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  bubble_tea_id: {
    type: DataTypes.INTEGER,
    allowNull: true,
    references: {
      model: 'bubble_tea',
      key: 'id'
    }
  }
}, {
  sequelize,
  tableName: 'collection',
  timestamps: true,
  underscored: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  indexes: [
    {
      name: "collection_name_key",
      unique: true,
      fields: ["name"]
    },
    {
      name: "collection_pkey",
      unique: true,
      fields: ["id"]
    },
  ]
});

export default Collection;
