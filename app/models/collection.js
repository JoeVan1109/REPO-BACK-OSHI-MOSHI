import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const Collection = sequelize.define('collection', {
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
    unique: "collection_name_key"
  },
  image_collection: {
    type: DataTypes.TEXT,
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
  schema: 'public',
  timestamps: true,
  indexes: [
    {
      name: "collection_name_key",
      unique: true,
      fields: [
        { name: "name" },
      ]
    },
    {
      name: "collection_pkey",
      unique: true,
      fields: [
        { name: "id" },
      ]
    },
  ]
});

export default Collection;
