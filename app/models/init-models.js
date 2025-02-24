import { sequelize } from '../database.js';

// Import the models
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




BubbleTea.belongsToMany(Tea, {
  through: BubbleTeaTea,
  foreignKey: 'bubble_tea_id',  // Clé étrangère dans la table de jonction qui référence BubbleTea
  otherKey: 'tea_id',           // Clé étrangère dans la table de jonction qui référence Tea
  as: 'teas'
});

Tea.belongsToMany(BubbleTea, {
  through: BubbleTeaTea,
  foreignKey: 'tea_id',           // Clé étrangère dans la table de jonction qui référence Tea
  otherKey: 'bubble_tea_id',  // Clé étrangère dans la table de jonction qui référence BubbleTea
  as: 'bubble_teas'
});

BubbleTea.belongsToMany(Pearl, {
  through: BubbleTeaPearl,
  foreignKey: 'bubble_tea_id',
  otherKey: 'pearl_id',
  as: 'pearls'
});

Pearl.belongsToMany(BubbleTea, {
  through: BubbleTeaPearl,
  foreignKey: 'pearl_id',
  otherKey: 'bubble_tea_id',
  as: 'bubble_teas'
});

BubbleTea.belongsToMany(Topping, {
  through: BubbleTeaTopping,
  foreignKey: 'bubble_tea_id',
  otherKey: 'topping_id',
  as: 'toppings'
});

Topping.belongsToMany(BubbleTea, {
  through: BubbleTeaTopping,
  foreignKey: 'topping_id',
  otherKey: 'bubble_tea_id',
  as: 'bubble_teas'
});



BubbleTea.belongsToMany(Collection, { 
  through: CollectionBubbleTea,
  foreignKey: 'bubble_tea_id',
  otherKey: 'collection_id',
  as: 'collections'
});
Collection.belongsToMany(BubbleTea, { 
  through: CollectionBubbleTea,
  foreignKey: 'collection_id',
  otherKey: 'bubble_tea_id',
  as: 'bubble_teas'
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
  sequelize,
};