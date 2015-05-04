proteins = Category.create(name: 'Fresh Proteins')
  meats = Category.create(name: 'Meats', parent_id: proteins.id)
    chicken = Category.create(name: 'Chicken', parent_id: meat.id)
      chicken_whole = Category.create(name: 'Whole Chicken', parent_id: chicken.id)
      chicken_breast = Category.create(name: 'Chicken Breast', parent_id: chicken.id)
      chicken_legs = Category.create(name: 'Chicken Legs', parent_id: chicken.id)
      chicken_drumsticks = Category.create(name: 'Chicken Drumstick', parent_id: chicken.id)
      chicken_ground= Category.create(name: 'Ground Chicken', parent_id: chicken.id)
    beef = Category.create(name: 'Beef', parent_id: meat.id)
      beef_steak = Category.create(name: 'Beaf Steak', parent_id: beef.id)
      beef_roast = Category.create(name: 'Beaf Roast', parent_id: beef.id)
      beef_ground = Category.create(name: 'Ground Beaf', parent_id: beef.id)
    turkey = Category.create(name: 'Turkey', parent_id: meat.id)
      turkey_whole = Category.create(name: 'Whole Turkey', parent_id: turkey.id)
      turkey_breast = Category.create(name: 'Turkey Breast', parent_id: turkey.id)
      turkey_ground= Category.create(name: 'Ground Turkey', parent_id: turkey.id)
    pork = Category.create(name: 'Pork', parent_id: meat.id)
      pork_chops = Category.create(name: 'Pork Chops', parent_id: pork.id)
      pork_roast = Category.create(name: 'Pork Roast', parent_id: pork.id)
      pork_ground = Category.create(name: 'Ground Pork', parent_id: pork.id)
    buffalo = Category.create(name: 'Buffalo', parent_id: meat.id)
      buffalo_steak = Category.create(name: 'Buffalo Steak', parent_id: buffalo.id)
      buffalo_roast = Category.create(name: 'Buffalo Roast', parent_id: buffalo.id)
      buffalo_ground = Category.create(name: 'Ground Buffalo', parent_id: buffalo.id)
    lamb = Category.create(name: 'Lamb', parent_id: meat.id)
      lamb_steak = Category.create(name: 'Lamb Steak', parent_id: lamb.id)
      lamb_roast = Category.create(name: 'Lamb Roast', parent_id: lamb.id)
      lamb_ground = Category.create(name: 'Ground Lamb', parent_id: lamb.id)
  seafood = Category.create(name: 'Fresh Seafood', parent_id: proteins.id)
    fish = Category.create(name: 'Fish', parent_id: seafood.id)
      salmon = Category.create(name: 'Salmon', parent_id: fish.id)
        whole_salmon = Category.create(name: 'Whole Salmon', parent_id: salmon.id)
        salmon_fillet = Category.create(name: 'Salmon Fillet', parent_id: salmon.id)
        salmon_steaks = Category.create(name: 'Salmon Steaks', parent_id: salmon.id)
      whitefish = Category.create(name: 'White fish', parent_id: fish.id)
        whole_whitefish = Category.create(name: 'Whole Whitefish', parent_id: whitefish.id)
        whitefish_fillet = Category.create(name: 'Whitefish Fillet', parent_id: whitefish.id)
    shellfish = Category.create(name: 'Shellfish', parent_id: seafood.id)
      shrimp = Category.create(name: 'Shrimp', parent_id: shellfish.id)
vegetables = Category.create(name: 'Vegetables')
  roots = Category.create(name: 'Roots', parent_id: vegetables.id)
    potatoes = Category.create(name: 'Potatoes', parent_id: roots.id)
    carrots = Category.create(name: 'Carrots', parent_id: roots.id)
  leaves = Category.create(name: 'Leaves', parent_id: vegetables.id)
    lettuce = Category.create(name: 'Lettuce', parent_id: leaves.id)
    collards = Category.create(name: 'Collards', parent_id: leaves.id)

kitchen = Location.create(name: 'Kitchen')
  under_counter = Location.create(name: 'Under Counter', parent_id: kitchen.id)
  spice_rack = Location.create(name: 'Spice Area', parent_id: kitchen.id)
    spice_top = Location.create(name: 'Spice Top Shelves', parent_id: spice_rack.id)
    spice_middle = Location.create(name: 'Spice Middle Shelves', parent_id: spice_rack.id)
    spice_bottom = Location.create(name: 'Spice Bottom Shelves', parent_id: spice_rack.id)
front_room = Location.create(name: 'Front Room/Dishwash Area')
  deli_case = Location.create(name: 'Deli Case', parent_id: front_room.id)
    deli_left = Location.create(name: 'Deli Left Door', parent_id: deli_case.id)
      deli_left_top = Location.create(name: 'Left Door Top', parent_id: deli_left.id)
      deli_left_middle = Location.create(name: 'Left Door Middle', parent_id: deli_left.id)
      deli_left_bottom = Location.create(name: 'Left Door Bottom', parent_id: deli_left.id)
    deli_middle = Location.create(name: 'Deli Middle Door', parent_id: deli_case.id)
      deli_middle_top = Location.create(name: 'Middle Door Top', parent_id: deli_middle.id)
      deli_middle_middle = Location.create(name: 'Middle Door Middle', parent_id: deli_middle.id)
      deli_middle_bottom = Location.create(name: 'Middle Door Bottom', parent_id: deli_middle.id)
    deli_right = Location.create(name: 'Deli Right Door', parent_id: deli_case.id)
      deli_right_top = Location.create(name: 'Right Door Top', parent_id: deli_right.id)
      deli_right_right = Location.create(name: 'Right Door Middle', parent_id: deli_right.id)
      deli_right_bottom = Location.create(name: 'Right Door Bottom', parent_id: deli_right.id)
  white_fridge = Location.create(name: 'White Fridge', parent_id: front_room.id)
    w_fridge_freezer = Location.create(name: 'Freezer (Left)', parent_id: white_fridge.id)
      freezer_door = Location.create(name: 'Freezer Door', parent_id: w_fridge_freezer.id)
      freezer_top = Location.create(name: 'Freezer Top Shelves', parent_id: w_fridge_freezer.id)
      freezer_middle = Location.create(name: 'Freezer Middle Sheves', parent_id: w_fridge_freezer.id)
      freezer_bottom = Location.create(name: 'Freezer Bottom Sheves', parent_id: w_fridge_freezer.id)
    w_fridge_fridge = Location.create(name: 'Fridge (Right)', parent_id: white_fridge.id)
      fridge_door = Location.create(name: 'Fridge Door', parent_id: w_fridge_fridge.id)
      fridge_top = Location.create(name: 'Fridge Top Shelves', parent_id: w_fridge_fridge.id)
      fridge_middle = Location.create(name: 'Fridge Middle Sheves', parent_id: w_fridge_fridge.id)
      fridge_bottom = Location.create(name: 'Fridge Bottom Sheves', parent_id: w_fridge_fridge.id)

ingredient1 = Ingredient.create(category_id: chicken.id, location_id: fridge_bottom)
ingredient2 = Ingredient.create(category_id: beef.id, location_id: freezer_bottom)
ingredient3 = Ingredient.create(category_id: carrots.id, location_id: fridge_top)
ingredient3 = Ingredient.create(category_id: lettuce.id, location_id: fridge_top)
