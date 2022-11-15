suggestRecipe(R) :-
    getIngredients(IngredientList),
    findRecipe(IngredientList, C, R),
    C =\= 0.


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

intersectionLength(List1, List2, N) :-
    intersection(List1, List2, L),
    length(L, N). %

% Knowledge base

recipe(('https://www.allrecipes.com/recipe/166160/juicy-thanksgiving-turkey/'),
    [broth, carrot, celery, champagne, 'lemon pepper', onion, orange, parsley,
     rosemary, sage, salt, thyme, turkey]).

recipe(('https://www.allrecipes.com/recipe/13647/grandma-winnies-turkey-stuffing/'),
    [butter, onion, celery, 'bread cubes', seasoning, mushroom, egg, 
     'chicken stock']).