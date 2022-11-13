suggest(Recipe) :- 
    write('What ingredient would you like to use?: '), read(Ingredient),
    write('What tool would you like to use?: '), read(Tool),
    write('What level of difficulty would you like?: '), read(Difficulty),
    write('How much time do you have?: '), read(Time),
    write('How many do you need to serve?: '), read(Servings),
    recipe(Recipe, Ingredient, Tool, Difficulty, Time, Servings).

recipe('https://www.allrecipes.com/recipe/166160/juicy-thanksgiving-turkey/', 
    I, T, D, Time, S) :- 
    (I = broth ; I = carrot ; I = celery ; I = champagne ; I = 'lemon-pepper' ;
     I = onion ; I = orange ; I = parsley ; I = rosemary ; I = sage ; 
     I = salt ; I = thyme ; I = turkey),
    (T = bowl ; T = 'chopping board' ; T = knife ; T = oven ; 
     T = 'roasting pan' ; T = 'tin foil'),
     D = hard,
     Time >= 210,
     S =< 10.