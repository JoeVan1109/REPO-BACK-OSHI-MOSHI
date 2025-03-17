import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';

const CollectionBubbleTea = sequelize.define('collection_bubble_tea', {
  collection_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: false,
    references: {
      model: 'collection',
      key: 'id'
    }
  },
  bubble_tea_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoIncrement: false,
    references: {
      model: 'bubble_tea',
      key: 'id'
    }
  }
}, {
  sequelize,
  tableName: 'collection_bubble_tea',
  timestamps: false,
  indexes: [
    {
      name: "collection_bubble_tea_pkey",
      unique: true,
      fields: ["collection_id", "bubble_tea_id"]
    },
  ]
});

export default CollectionBubbleTea;