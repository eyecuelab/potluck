proteins = Category.create(name: 'Proteins')
  meat = Category.create(name: 'Meat', parent_id: proteins.id)
    chicken = Category.create(name: 'Chicken', parent_id: meat.id)
    beef = Category.create(name: 'Beef', parent_id: meat.id)
  seafood = Category.create(name: 'Seafood', parent_id: proteins.id)
    fish = Category.create(name: 'Fish', parent_id: seafood.id)
    shellfish = Category.create(name: 'Shellfish', parent_id: seafood.id)
vegetables = Category.create(name: 'Vegetable')
  roots = Category.create(name: 'Roots', parent_id: vegetables.id)
    potatos = Category.create(name: 'Potato', parent_id: roots.id)
    carrots = Category.create(name: 'Carrots', parent_id: roots.id)
  leaves = Category.create(name: 'Leaves', parent_id: vegetables.id)
    lettuce = Category.create(name: 'Lettuce', parent_id: leaves.id)
    collards = Category.create(name: 'Collards', parent_id: leaves.id)

fridge = Location.create(name: 'Fridge')
  fridge_top = Location.create(name: 'Top', parent_id: fridge.id)
  fridge_bottom = Location.create(name: 'Bottom', parent_id: fridge.id)
freezer = Location.create(name: 'Freezer')
  freezer_top = Location.create(name: 'Top', parent_id: freezer.id)
  freezer_bottom = Location.create(name: 'Bottom', parent_id: freezer.id)

ingredient1 = Ingredient.create(category_id: chicken.id, location_id: fridge_bottom)
ingredient2 = Ingredient.create(category_id: beef.id, location_id: freezer_bottom)
ingredient3 = Ingredient.create(category_id: carrots.id, location_id: fridge_top)
ingredient3 = Ingredient.create(category_id: lettuce.id, location_id: fridge_top)
