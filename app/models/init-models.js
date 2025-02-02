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

// Define relationships between the models

// Relation bubble_tea <--> tea (many-to-many)
BubbleTea.belongsToMany(Tea, { through: BubbleTeaTea });
Tea.belongsToMany(BubbleTea, { through: BubbleTeaTea });

// Relation bubble_tea <--> pearl (many-to-many)
BubbleTea.belongsToMany(Pearl, { through: BubbleTeaPearl });
Pearl.belongsToMany(BubbleTea, { through: BubbleTeaPearl });

// Relation bubble_tea <--> topping (many-to-many)
BubbleTea.belongsToMany(Topping, { through: BubbleTeaTopping });
Topping.belongsToMany(BubbleTea, { through: BubbleTeaTopping });

// Relation bubble_tea <--> collection (one-to-many)
BubbleTea.belongsTo(Collection, { foreignKey: 'collection_id' });
Collection.hasMany(BubbleTea, { foreignKey: 'collection_id' });

// Export the models and the sequelize instance
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