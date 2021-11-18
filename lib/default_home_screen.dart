import 'package:flutter/material.dart';
import 'empty_favorites_screen.dart';
import 'filled_favorites_screen.dart';
import 'recipes_content.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen(
      {Key? key,
      required this.onChange,
      required this.Foods,
      required this.Recipes})
      : super(key: key);

  final ValueChanged<int> onChange;
  final List<String> Recipes;
  final List<String> Foods;

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<bool> isSelected = [true, false];
  int counter = 0;

  List<Map<String, String>> homeData = [
    {
      'image': 'assets/images/food.png',
      'text': 'No Foods Found',
      'desc':
          'You didn\'t save any food. Go ahead, search and save your favorite food.',
    },
    {
      'image': 'assets/images/recipe.png',
      'text': 'No Recipes Found',
      'desc':
          'You didn\'t save any recipes. Go ahead, search and save your favorite recipe.',
    },
  ];

  /*List<String> Foods = [
    'Cookies',
    'Burger',
    'Cakes',
    'Pizza',
    'Hotdog',
    'Fries',
    'Donuts'
  ];

  List<String> Recipes = [
    'Fish Steaks With Veggie Sauce',
    'Choco Lamb Veggies',
    'Mutton Kebab Nuggets',
    'Chicken Leg Piece',
    'Fruit Veggie Mix With Meat'
  ];*/

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber.withOpacity(0.1),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ToggleButtons(
            borderRadius: BorderRadius.circular(15),
            isSelected: isSelected,
            selectedColor: Colors.white,
            color: Colors.amber,
            fillColor: Colors.amber.shade400,
            renderBorder: false,
            children: <Widget>[
              Container(
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Foods',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Recipes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
            onPressed: (int newIndex) {
              setState(() {
                for (int index = 0; index < isSelected.length; index++) {
                  if (index == newIndex) {
                    isSelected[index] = true;
                  } else {
                    isSelected[index] = false;
                  }
                }
                counter = newIndex;
                widget.onChange(counter);
              });
            },
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: getWidget(widget.Foods, widget.Recipes),
        ),
      ],
    );
  }

  getWidget(Foods, Recipes) {
    if (counter == 0) {
      if (Foods.length == 0) {
        return EmptyFavoritesScreen(
          image: homeData[counter]['image'],
          text: homeData[counter]['text'],
          desc: homeData[counter]['desc'],
        );
      } else {
        return FoodsScreen();
      }
    } else {
      if (Recipes.length == 0)
        return EmptyFavoritesScreen(
          image: homeData[counter]['image'],
          text: homeData[counter]['text'],
          desc: homeData[counter]['desc'],
        );
      else {
        return RecipesScreen();
      }
    }
  }
}
