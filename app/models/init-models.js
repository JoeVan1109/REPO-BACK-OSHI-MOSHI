import { DataTypes } from 'sequelize';
import { sequelize } from '../database.js';
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

function initModels() {
  const bar = Bar(sequelize, DataTypes);
  const bubble_tea = BubbleTea(sequelize, DataTypes);
  const bubble_tea_pearl = BubbleTeaPearl(sequelize, DataTypes);
  const bubble_tea_tea = BubbleTeaTea(sequelize, DataTypes);
  const bubble_tea_topping = BubbleTeaTopping(sequelize, DataTypes);
  const collection = Collection(sequelize, DataTypes);
  const collection_bubble_tea = CollectionBubbleTea(sequelize, DataTypes);
  const milk = Milk(sequelize, DataTypes);
  const pearl = Pearl(sequelize, DataTypes);
  const tea = Tea(sequelize, DataTypes);
  const topping = Topping(sequelize, DataTypes);

  bubble_tea.belongsToMany(tea, { through: bubble_tea_tea });
  tea.belongsToMany(bubble_tea, { through: bubble_tea_tea });

  bubble_tea.belongsToMany(pearl, { through: bubble_tea_pearl });
  pearl.belongsToMany(bubble_tea, { through: bubble_tea_pearl });

  bubble_tea.belongsToMany(topping, { through: bubble_tea_topping });
  topping.belongsToMany(bubble_tea, { through: bubble_tea_topping });

  // Un bubble_tea n'a qu'une seule collection
  bubble_tea.belongsTo(collection, { foreignKey: 'collection_id' });
  // Une collection peut avoir plusieurs bubble_tea
  collection.hasMany(bubble_tea, { foreignKey: 'collection_id' });

  return {
    bar,
    bubble_tea,
    bubble_tea_pearl,
    bubble_tea_tea,
    bubble_tea_topping,
    collection,
    collection_bubble_tea,
    milk,
    pearl,
    tea,
    topping,
  };
}

export default initModels;
export { initModels };