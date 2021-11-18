//@dart=2.9
import 'package:flutter/material.dart';
import 'package:kcal_application/foods_content.dart';
import 'package:kcal_application/recipes_content.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({
    Key key,
  }) : super(key: key);

  @override
  _FoodsScreenState createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  List<Map<String, String>> foodData = [
    {
      'image': 'assets/images/cookies.png',
      'text': 'Cookie',
      'altname': 'Biscuit',
      'desc':
          'A cookie is a baked or cooked food that is typically small, flat and sweet. It usually contains flour, sugar, egg, and some type of oil, fat or butter. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.',
      'trivia':
          'In most English-Speaking countries except for the United States, crunchy cookies are called biscuits. Many Canadians also use this term. Chewier biscuits are sometimes called cookies even in the United Kingdom. Some cookies may also be named by their shape, such as data squares or bars.',
      'galimage1': 'assets/images/gal-cookies.jpg',
      'galimage2': 'assets/images/gal-cookies2.jpg',
      'galimage3': 'assets/images/gal-cookies3.jpg',
    },
    {
      'image': 'assets/images/burger.png',
      'text': 'Burger',
      'altname': 'Hamburger Sandwich',
      'desc':
          'A hamburger is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.',
      'trivia':
          'Considerable evidence suggests that either the USA or Germany (city of Hamburg) was the first country where two slices of bread and a ground beef steak were combined into a "hamburger sandwich" and sold. There is some controversy over the origin of the hamburger because its two basic ingredients, bread and beef, had been prepared and consumed separately for many years in different countries before their combination.',
      'galimage1': 'assets/images/gal-burger.jpg',
      'galimage2': 'assets/images/gal-burger2.jpg',
      'galimage3': 'assets/images/gal-burger3.jpg',
    },
    {
      'image': 'assets/images/cakes.png',
      'text': 'Cupcakes',
      'altname': 'Fairy Cake',
      'desc':
          'A cupcake (also British English: fairy cake; Hiberno-English: bun) is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations such as fruit and candy may be applied.',
      'trivia':
          'Back in the day cupcakes were called “Number Cakes” or “1234 Cakes” because the recipe called for 1 cup of butter, 2 cups of sugar, 3 cups of flour, 4 eggs and also 1 cup of milk and 1 spoonful of baking soda. In short, cupcakes started to become popular in 1919 when the company Hostess started mass producing them.',
      'galimage1': 'assets/images/gal-cakes.jpg',
      'galimage2': 'assets/images/gal-cakes2.jpg',
      'galimage3': 'assets/images/gal-cakes3.jpg',
    },
    {
      'image': 'assets/images/pizza.png',
      'text': 'Pizza',
      'altname': 'Pie',
      'desc':
          'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven.',
      'trivia':
          'The term pizza was first recorded in the 10th century in a Latin manuscript from the Southern Italian town of Gaeta in Lazio, on the border with Campania. Modern pizza was invented in Naples, and the dish and its variants have since become popular in many countries. It has become one of the most popular foods in the world and a common fast food item in Europe, North America and Australasia.',
      'galimage1': 'assets/images/gal-pizza.jpg',
      'galimage2': 'assets/images/gal-pizza2.jpg',
      'galimage3': 'assets/images/gal-pizza3.jpeg',
    },
    {
      'image': 'assets/images/hotdog.png',
      'text': 'Hotdog',
      'altname': 'Frankfurter',
      'desc':
          'A hot dog (less commonly spelled hotdog) is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter. The names of these sausages also commonly refer to their assembled dish.',
      'trivia':
          'The term dog has been used as a synonym for sausage since the 1800s, possibly from accusations that sausage makers used dog meat in their sausages. In Germany the consumption of dog meat was common in Saxony, Silesia, Anhalt, and Bavaria during the 19th and 20th centuries. The suspicion that sausages contained dog meat was "occasionally justified".',
      'galimage1': 'assets/images/gal-hotdog.jpg',
      'galimage2': 'assets/images/gal-hotdog2.jpeg',
      'galimage3': 'assets/images/gal-hotdog3.jpg',
    },
    {
      'image': 'assets/images/fries.png',
      'text': 'Fries',
      'altname': 'Chips',
      'desc':
          'French fries (North American English), chips (British English), finger chips (Indian English), French-fried potatoes, or simply fries are batonnet or allumette-cut deep-fried potatoes, originating from either Belgium or France. They are prepared by cutting the potato into even strips, then drying and frying it, usually in a deep fryer. Most french fries are produced from frozen Russet potatoes.',
      'trivia':
          'In the United States and most of Canada, the term french fries, sometimes capitalized as French fries, or shortened to fries, refers to all dishes of fried elongated pieces of potatoes. Variants in shape and size may have names such as curly fries, shoestring fries, etc. In the United Kingdom, Australia, South Africa, Ireland and New Zealand, the term chips is generally used instead, though thinly cut fried potatoes are sometimes called french fries or skinny fries, to distinguish them from chips, which are cut thicker.',
      'galimage1': 'assets/images/gal-fries.jpg',
      'galimage2': 'assets/images/gal-fries2.jpg',
      'galimage3': 'assets/images/gal-fries3.jpg',
    },
    {
      'image': 'assets/images/donut.png',
      'text': 'Donuts',
      'altname': 'Sinker',
      'desc':
          'A doughnut or donut is a type of leavened fried dough. Doughnuts are usually deep fried from a flour dough, but other types of batters can also be used. Various toppings and flavorings are used for different types, such as sugar, chocolate or maple glazing. Doughnuts may also include water, leavening, eggs, milk, sugar, oil, shortening, and natural or artificial flavors.',
      'trivia':
          'One of the earliest known literary usages of the term dates to an 1808 short story describing a spread of \"fire-cakes and dough-nuts\". Washington Irving described "dough-nuts", in his 1809 History of New York, as \"balls of sweetened dough, fried in hog\'s fat, and called dough-nuts, or olykoeks.\" These \"nuts\" of fried dough might now be called doughnut holes. The word nut is here used in the earlier sense of \"small rounded cake or cookie\", also seen in ginger nut.',
      'galimage1': 'assets/images/gal-donut.jpg',
      'galimage2': 'assets/images/gal-donut2.jpg',
      'galimage3': 'assets/images/gal-donut3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 10;
    final double itemWidth = size.width / 2;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: foodData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: (itemWidth / itemHeight),
        ),
        itemBuilder: (context, index) => FoodsContent(
          image: foodData[index]['image'],
          text: foodData[index]['text'],
          altname: foodData[index]['altname'],
          desc: foodData[index]['desc'],
          trivia: foodData[index]['trivia'],
          galimage1: foodData[index]['galimage1'],
          galimage2: foodData[index]['galimage2'],
          galimage3: foodData[index]['galimage3'],
        ),
      ),
    );
  }
}

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key key}) : super(key: key);

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  List<Map<String, String>> recipeData = [
    {
      'image': 'assets/images/fish-steaks.jpeg',
      'text': 'Fish Steaks With Veggie Sauce',
      'desc': 'Boneless with steaks with crispy fried sauce and toppings.',
      'time': '55 min',
      'serving': '3 serve',
      'recipeDesc':
          'Grilled Fish Steak is a delicious Mediterranean recipe made by marinating fish fillets in garlic, green chillies and a blend of spices. Tender fish fillets smeared in a simple marinade of lime juice and salt, seared golden. Delicious, isn\'t it?',
      'ingimage1': 'assets/images/ing-fish.png',
      'ingimage2': 'assets/images/ing-lemon.png',
      'ingimage3': 'assets/images/ing-cabbage.png',
      'ingimage4': 'assets/images/ing-turmeric.png',
      'ingname1': 'Fish',
      'ingname2': 'Lemon Juice',
      'ingname3': 'Cabbage',
      'ingname4': 'Turmeric',
      'ingmeasure1': '250 g',
      'ingmeasure2': '3 tbsp',
      'ingmeasure3': '50 g',
      'ingmeasure4': '3 pcs',
      'step1':
          'To prepare this amazing non-vegetarian recipe, take the fish fillets and massage it gently with oil, keep aside in a plate.',
      'step2':
          'Grind together the garlic, turmeric powder, red chilli powder, green chillies, dill leaves, coriander powder, and grind to form a paste. Rub this all over the fish fillets and keep aside ot marinate for 15 to 30 minutes.',
      'step3':
          'Grill the marinated fish on a preheated grill or oven till golden and crsip on both sides or for 5 minutes. Transfer to a plate.',
    },
    {
      'image': 'assets/images/choco-lamb.jpg',
      'text': 'Choco Lamb Veggies',
      'desc': 'Deeply fried lamb meat with choco dips and fresh vegetables.',
      'time': '25 min',
      'serving': '1 serve',
      'recipeDesc':
          'This amazingly decadent chocolate lamb veggies is made with chopped lamb stew meat, a mix of beans, chocolates, cocoa powder and other veggies. The flavor is a bit reminiscent of Mexican mole sauce making this lamb veggies recipe one of kind!',
      'ingimage1': 'assets/images/ing-lamb.png',
      'ingimage2': 'assets/images/ing-cocoa.png',
      'ingimage3': 'assets/images/ing-choco.png',
      'ingimage4': 'assets/images/ing-onion.png',
      'ingname1': 'Lamb',
      'ingname2': 'Cocoa Powder',
      'ingname3': 'Bittersweet Chocolate',
      'ingname4': 'Red Onion',
      'ingmeasure1': '400 g',
      'ingmeasure2': '20 g',
      'ingmeasure3': '20 g',
      'ingmeasure4': '1 pc',
      'step1':
          'Heat some ghee or olive oil in a large pot or Dutch oven over medium-high heat. Add the lamb to the pot and cook until browned on all sides. Remove the lamb to a plate with a slotted spoon and drain the excess liquid left in the pot.',
      'step2':
          'Return the pot to the stove and add some more ghee or olive oil. Add the onions and garlic and sauté for about 5 minutes until softened. Add the spices, bay leaf, cocoa powder and tomato paste, stir until well combined and cook for a minute until fragrant.',
      'step3':
          'After 30 minutes, remove the lid, add the beans and the chopped chocolate. Stir to combine and cook for 5 more minutes. Garnish the chili with chopped fresh cilantro, sliced green onions and/or some ripe avocado slices before serving.',
    },
    {
      'image': 'assets/images/mutton-kebab.jpg',
      'text': 'Mutton Kebab Nuggets',
      'desc': 'Crunchy mutton kebabs with chilli toppings and sauce.',
      'time': '45 min',
      'serving': '5 serve',
      'recipeDesc':
          'If you\'re looking for a non-vegetarian snack that is a high protein, low carb, keto, gluten-free and lactose-free, then the Mutton Kebab recipe is perfect for you. This spicy Mughlai Boneless Mutton Recipe is a perfect accompaniment to a rainy day or a lazy weekend. Made of mutton and rich in protein, you will love having this lunch, dinner, evening or all-day snack with Mirchi chutney, mint coriander chutney, pineapple juice or orange juice. Try this Mutton Dry Recipe at the comfort of your home.',
      'ingimage1': 'assets/images/ing-mutton.png',
      'ingimage2': 'assets/images/ing-coriander.png',
      'ingimage3': 'assets/images/ing-onion2.png',
      'ingimage4': 'assets/images/ing-chili.png',
      'ingname1': 'Mutton',
      'ingname2': 'Coriander Leaves',
      'ingname3': 'Onion',
      'ingname4': 'Red Chili Powder',
      'ingmeasure1': '1/2 cup',
      'ingmeasure2': '1 tbsp',
      'ingmeasure3': '1.5 tbsp',
      'ingmeasure4': '1/2 tsp',
      'step1':
          'To prepare this interesting appetizer recipe, wash the mutton under running water. Now take a mincer and mince the mutton carefully. Take a chopping board and chop onions, green chillies and coriander leaves. Keep them in separate bowls. Meanwhile preheat the oven at 230 degrees Celsius.',
      'step2':
          'Simultaneously, take a grinder and add minced mutton, onion, green chillies and coriander leaves. Grind them to get a paste of thick consistency. Transfer it to a bowl and add salt, red chilli powder, garam masala, cumin powder and ginger-garlic paste. Mix them well.',
      'step3':
          'Divide this mixture into 10 portions equally. Now, with moist hands pat the mixture, shape the mixture into kebabs and put them onto the skewers. Place the skewers into the oven and cook until reddish-brown color. While the kebabs are in the oven, baste 1 teaspoon of butter onto each side of the kebabs at intervals. Sprinkle chaat masala and lemon juice equally onto each kebab. Serve hot!',
    },
    {
      'image': 'assets/images/chicken-leg.jpeg',
      'text': 'Chicken Leg Piece',
      'desc': 'Crispy chicken leg pieces with side veggies and sauce.',
      'time': '25 min',
      'serving': '2 serve',
      'recipeDesc':
          'A dish of chicken marinated in yogurt, citrus, and spices, and then grilled or broiled. The chicken is deliciously spiced with super-crispy skin. The chicken is best marinated overnight, but if you’re in a time crunch, a few hours will do just fine. Kids love this one too!',
      'ingimage1': 'assets/images/ing-chicken.png',
      'ingimage2': 'assets/images/ing-turmeric.png',
      'ingimage3': 'assets/images/ing-oil.png',
      'ingimage4': 'assets/images/ing-garlic.png',
      'ingname1': 'Chicken Drumsticks',
      'ingname2': 'Ground Turmeric',
      'ingname3': 'Vegetable Oil',
      'ingname4': 'Garlic Cloves',
      'ingmeasure1': '1 kg',
      'ingmeasure2': '1/2 tspn',
      'ingmeasure3': '1/4 g',
      'ingmeasure4': '7 pcs',
      'step1':
          'In a small pan over medium-low heat, combine the paprika, garam masala, cumin, coriander, turmeric and cayenne pepper. Cook, stirring frequently, for about 2 minutes, until spices are fragrant.',
      'step2':
          'Using a very sharp knife, make 2 or 3 slashes in each drumstick (be careful; they are slippery). Place the drumsticks in a large bowl and toss with the marinade. Cover and refrigerate for at least 3 hours or overnight.',
      'step3':
          'Arrange the chicken on the rack, leaving a bit of space between the pieces. Spoon any marinade left in the bowl evenly over the drumsticks. Roast for 45 minutes, turning once midway through, until the chicken is golden brown and cooked through (be sure to turn on your exhaust fan as the oven will get a little smoky). Turn on the broiler and broil the chicken about 6 inches from the heat for 3-5 minutes, until lightly charred and crisp all over. Transfer on a plate.',
    },
    {
      'image': 'assets/images/fruit-veggies.jpg',
      'text': 'Fruit Veggie Mix With Meat',
      'desc': 'Crunchy deep fried meat mixed with fruits and vegetables.',
      'time': '15 min',
      'serving': '1 serve',
      'recipeDesc':
          'A delicious healthy recipe... with extra tips for serving. Bonus recipe for a quick garlicky tomato sauce. My favorite new meatball ~ chock full of roasted eggplant blended with natural ground turkey, parmesan, quinoa and herbs. Baked, then simmered in a heady garlicky-tomato sauce. Enjoy!',
      'ingimage1': 'assets/images/ing-meat.png',
      'ingimage2': 'assets/images/ing-eggplant.png',
      'ingimage3': 'assets/images/ing-parsley.png',
      'ingimage4': 'assets/images/ing-thymes.png',
      'ingname1': 'Meat',
      'ingname2': 'Eggplant',
      'ingname3': 'Parsley Leaves',
      'ingname4': 'Thyme Leaves',
      'ingmeasure1': '1 lb',
      'ingmeasure2': '1 pc',
      'ingmeasure3': '3/4 cup',
      'ingmeasure4': '1 tspn',
      'step1':
          'Preheat the oven to 375 degrees. Line a rimmed baking sheet with parchment paper (or a silpat sheet). Peel eggplant, and cut it into long batonettes, about 3/4 " X 3" and place them on the sheet. Rub in 2 T. of oil and roast in the oven for 35 - 45 minutes until softened, cooked through, and not yet golden.',
      'step2':
          'Quick Garlicky Tomato Sauce: In a heavy two quart pot, add 2T. extra virgin olive oil and 8 small cloves of sliced garlic. Cook over low-medium heat until garlic is just coloring, about 5 minutes. Take contents of one can of fire roasted tomatoes, and drain - saving the juice. Add the tomatoes, 2T. tomato paste, 1 t. crushed italian seasonings and 1/8 t. crushed chilies and stir all together.',
      'step3':
          'Add 2 1/2 cups of your favorite tomato sauce and reserved juice, bring to a boil, then simmer covered for 20 minutes. Taste for seasonings. Ready to serve it on a plate.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipeData.length,
      itemBuilder: (BuildContext context, int index) => RecipesContent(
        image: recipeData[index]['image'],
        text: recipeData[index]['text'],
        desc: recipeData[index]['desc'],
        time: recipeData[index]['time'],
        serving: recipeData[index]['serving'],
        recipeDesc: recipeData[index]['recipeDesc'],
        ingimage1: recipeData[index]['ingimage1'],
        ingimage2: recipeData[index]['ingimage2'],
        ingimage3: recipeData[index]['ingimage3'],
        ingimage4: recipeData[index]['ingimage4'],
        ingname1: recipeData[index]['ingname1'],
        ingname2: recipeData[index]['ingname2'],
        ingname3: recipeData[index]['ingname3'],
        ingname4: recipeData[index]['ingname4'],
        ingmeasure1: recipeData[index]['ingmeasure1'],
        ingmeasure2: recipeData[index]['ingmeasure2'],
        ingmeasure3: recipeData[index]['ingmeasure3'],
        ingmeasure4: recipeData[index]['ingmeasure4'],
        step1: recipeData[index]['step1'],
        step2: recipeData[index]['step2'],
        step3: recipeData[index]['step3'],
      ),
    );
  }
}
