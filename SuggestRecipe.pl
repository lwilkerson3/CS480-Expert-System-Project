suggestRecipe(R) :-
    getIngredients(IngredientList),
    findRecipe(IngredientList, NumMatch, R),
    NumMatch =\= 0.


getIngredients([Ingredient|Tail]) :-
    write('Enter an ingredient or stop to stop: '), 
    read(Ingredient),
    dif(Ingredient, stop),
    getIngredients(Tail).

getIngredients([]).

findRecipe(IngredientList, HighMatchNum, Recipe) :-
    aggregate_all(max(N, Key), 
        (recipe(Key, List), intersectionLength(IngredientList, List, N)),
        max(HighMatchNum, Recipe)).

intersectionLength(List1, List2, Length) :-
    intersection(List1, List2, List3),
    length(List3, Length).

% Knowledge base

recipe(('https://www.allrecipes.com/recipe/166160/juicy-thanksgiving-turkey/'),
    [parsley, sage, rosemary, thyme, 'lemon pepper', salt, celery, orange, onion, carrot, champagne, broth, turkey]).

recipe(('https://www.allrecipes.com/recipe/13647/grandma-winnies-turkey-stuffing/'),
    [butter, onion, celery, 'bread cubes', seasoning, mushroom, egg, 'chicken stock']).

recipe(('https://www.allrecipes.com/recipe/26482/candied-yams/'),
    [sugar, marshmallow, butter, 'sweet potato']).

recipe(('https://www.allrecipes.com/recipe/9487/pecan-pie/'),
    [sugar, salt, 'corn syrup', butter, cornstarch, egg, vanilla, pecans, 'pie shell']).

recipe(('https://www.allrecipes.com/recipe/138490/grilled-pepper-basil-and-turkey-roulade-with-basil-sour-cream-sauce/'),
    ['bell pepper', lemon, sour cream, basil, 'turkey breast']).

recipe(('https://www.allrecipes.com/recipe/24174/garys-stuffed-mushrooms/'),
    [mushroom, 'stuffing mix', 'cream cheese', crab, butter, garlic]).

recipe(('https://www.allrecipes.com/recipe/77981/butternut-squash-soup-ii/'),
    [butter, onion, celery, carrot, potato, 'butternut squash', 'chicken stock']).

recipe(('https://www.allrecipes.com/recipe/261778/maple-roasted-brussels-sprouts-with-apples-and-cranberries/'),
    ['brussels sprouts', apple, oil, 'maple syrup', 'balsamic vinegar', cranberries]).

recipe(('https://www.allrecipes.com/recipe/24771/basic-mashed-potatoes/'),
    [potato, garlic, milk, butter]).

recipe(('https://www.allrecipes.com/recipe/286233/air-fryer-mustard-crusted-brussels-sprouts/'),
    [oil, mustard, paprika, 'brussels sprouts']).

recipe(('https://www.allrecipes.com/recipe/23600/worlds-best-lasagna/'),
    [sausage, 'ground beef', onion, garlic, 'canned tomato', 'tomato sauce', 'tomato paste', sugar, basil, 
    'lasagna noodles', cheese, egg, mozzarella, parmesan]).

recipe(('https://www.allrecipes.com/recipe/231097/caldo-de-pollo/'),
    [chicken, garlic, bouillon, carrot, potato, onion, cilantro]).

recipe(('https://www.allrecipes.com/recipe/13731/pumpkin-roll-i/'),
    [sugar, 'pumpkin puree', egg, cinnamon, flour, 'baking soda', 'cream cheese', butter, 'vanilla extract']).

recipe(('https://www.allrecipes.com/recipe/25473/the-perfect-basic-burger/'),
    [egg, beef, 'bread crumbs', lettuce, tomato, mayonnaise, onion]).

recipe(('https://www.allrecipes.com/recipe/85127/kielbasa-with-peppers-and-potatoes/'),
    [oil, kielbasa, potato, 'bell pepper']).

recipe(('https://www.allrecipes.com/recipe/257865/easy-chorizo-street-tacos/'),
    [chorizo, peppers, tortillas, onion, cilantro]).

recipe(('https://www.allrecipes.com/recipe/47015/quick-and-easy-pancit/'),
    ['rice noodles', oil, onion, garlic, chicken, cabbage, carrot, 'soy sauce', lemon]).

recipe(('https://www.allrecipes.com/recipe/35151/traditional-filipino-lumpia/'),
    [oil, pork, onion, garlic, carrot, cabbage, 'soy sauce', 'rice paper']).

recipe(('https://www.allrecipes.com/recipe/212929/chicken-tinola/'),
    [oil, onion, garlic, ginger, chicken, broth, 'bok choy']).

recipe(('https://www.allrecipes.com/recipe/13982/quick-and-easy-vegetable-curry/'),
    [oil, onion, garlic, 'curry powder', tomato, bouillon, 'mixed vegetables']).

recipe(('https://www.allrecipes.com/article/how-to-make-ricotta-gnocchi/'),
    [ricotta, parmesan, egg, flour]).

recipe(('https://www.allrecipes.com/recipe/212636/japanese-beef-stir-fry/'),
    [beef, cornstarch, broth, 'soy sauce', sugar, oil, mushroom, 'bok choy', peppers, rice]).

recipe(('https://www.allrecipes.com/recipe/13041/my-best-clam-chowder/'),
    [potato, carrot, celery, onion, clams, butter, flour, 'half-and-half']).

recipe(('https://www.allrecipes.com/recipe/71387/best-salmon-bake/'),
    [salmon, tomato, onion]).