import { sequelize } from '../database.js';

// Import des modèles
import Bar from './bar.js';
import Tea from './tea.js';
import Milk from './milk.js';
import Topping from './topping.js';
import Pearl from './pearl.js';
import Collection from './collection.js';
import BubbleTea from './bubble_tea.js';
import BubbleTeaPearl from './bubble_tea_pearl.js';
import BubbleTeaTea from './bubble_tea_tea.js';
import BubbleTeaTopping from './bubble_tea_topping.js';
import CollectionBubbleTea from './collection_bubble_tea.js';
import { client } from './client.js';

// Relations Many-to-Many avec Tea
BubbleTea.belongsToMany(Tea, {
  through: BubbleTeaTea,
  foreignKey: 'bubble_tea_id',
  otherKey: 'tea_id',
  as: 'teas',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

Tea.belongsToMany(BubbleTea, {
  through: BubbleTeaTea,
  foreignKey: 'tea_id',
  otherKey: 'bubble_tea_id',
  as: 'bubble_teas',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

// Relations Many-to-Many avec Pearl
BubbleTea.belongsToMany(Pearl, {
  through: BubbleTeaPearl,
  foreignKey: 'bubble_tea_id',
  otherKey: 'pearl_id',
  as: 'pearls',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

Pearl.belongsToMany(BubbleTea, {
  through: BubbleTeaPearl,
  foreignKey: 'pearl_id',
  otherKey: 'bubble_tea_id',
  as: 'bubble_teas',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

// Relations Many-to-Many avec Topping
BubbleTea.belongsToMany(Topping, {
  through: BubbleTeaTopping,
  foreignKey: 'bubble_tea_id',
  otherKey: 'topping_id',
  as: 'toppings',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

Topping.belongsToMany(BubbleTea, {
  through: BubbleTeaTopping,
  foreignKey: 'topping_id',
  otherKey: 'bubble_tea_id',
  as: 'bubble_teas',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

// Relations Many-to-Many avec Collection
BubbleTea.belongsToMany(Collection, { 
  through: CollectionBubbleTea,
  foreignKey: 'bubble_tea_id',
  otherKey: 'collection_id',
  as: 'collections',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

Collection.belongsToMany(BubbleTea, { 
  through: CollectionBubbleTea,
  foreignKey: 'collection_id',
  otherKey: 'bubble_tea_id',
  as: 'bubble_teas',
  onDelete: 'CASCADE',
  onUpdate: 'CASCADE'
});

export {
  Bar,
  Tea,
  Milk,
  Topping,
  Pearl,
  Collection,
  BubbleTea,
  BubbleTeaPearl,
  BubbleTeaTea,
  BubbleTeaTopping,
  CollectionBubbleTea,
  client,
  sequelize,
};
