// @dart=2.9

import 'package:flutter/material.dart';
import 'package:kcal_application/recipes_details.dart';
import 'package:kcal_application/splash.dart';
import 'components/screen_arguments.dart';
import 'default_home_screen.dart';
import 'components/custBotNavBar.dart';
import 'foods_details.dart';
import 'intro_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KCAL Application',
      routes: {
        '/HomePage': (context) => const HomePage(),
        '/RecipeDetails': (context) {
          final args = ModalRoute.of(context).settings.arguments
              as RecipeScreenArguments;
          return RecipesDetails(
            text: args.text,
            image: args.image,
            time: args.time,
            serving: args.serving,
            recipeDesc: args.recipeDesc,
            ingimage1: args.ingimage1,
            ingimage2: args.ingimage2,
            ingimage3: args.ingimage3,
            ingimage4: args.ingimage4,
            ingname1: args.ingname1,
            ingname2: args.ingname2,
            ingname3: args.ingname3,
            ingname4: args.ingname4,
            ingmeasure1: args.ingmeasure1,
            ingmeasure2: args.ingmeasure2,
            ingmeasure3: args.ingmeasure3,
            ingmeasure4: args.ingmeasure4,
            step1: args.step1,
            step2: args.step2,
            step3: args.step3,
          );
        },
        '/FoodDetails': (context) {
          final args =
              ModalRoute.of(context).settings.arguments as FoodScreenArguments;
          return FoodsDetails(
            image: args.image,
            text: args.text,
            altname: args.altname,
            desc: args.desc,
            trivia: args.trivia,
            galimage1: args.galimage1,
            galimage2: args.galimage2,
            galimage3: args.galimage3,
          );
        }
      },
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        primary: true,
        body: SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}

class IntroScreens extends StatefulWidget {
  const IntroScreens({Key key}) : super(key: key);

  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  int curPage = 0;

  List<Map<String, String>> introData = [
    {
      'text': 'Eating Healthy',
      'desc':
          'Maintaining good health should be the primary focus of everyone.',
      'image': 'assets/images/eating.png'
    },
    {
      'text': 'Healthy Recipes',
      'desc': 'Browse thousands of healthy recipes from all over the world.',
      'image': 'assets/images/cook.png'
    },
    {
      'text': 'Track Your Health',
      'desc': 'With amazing inbuilt tools you can track your progress.',
      'image': 'assets/images/track.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          SizedBox(height: 60),
          Text(
            'kcal',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 35,
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  curPage = value;
                });
              },
              itemCount: introData.length,
              itemBuilder: (context, index) => IntroContent(
                image: introData[index]['image'],
                text: introData[index]['text'],
                desc: introData[index]['desc'],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    introData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                Spacer(flex: 2),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomePage');
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        letterSpacing: 3,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(200, 239, 156, 46),
                    minimumSize: Size(300, 70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      ' Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: curPage == index ? 20 : 10,
      decoration: BoxDecoration(
        color: curPage == index
            ? Color.fromARGB(255, 255, 145, 0)
            : Color.fromARGB(100, 239, 156, 46),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueChanged<int> onChange;
  int selectedItem = 3, toggleButtonIndex = 0, recipeListLength = 0;
  String title = 'Favorites';

  List<Map<String, String>> homePageScreensContent = [
    {
      'title': 'Home',
      'image': 'assets/images/home.png',
      'message': 'Welcome to KCAL',
    },
    {
      'title': 'Search',
      'image': 'assets/images/search.png',
      'message': 'Looking for something?',
    },
    {
      'title': 'Capture',
      'image': 'assets/images/capture.png',
      'message': 'Share your instagram worthy photos',
    },
    {
      'title': 'Favorites',
    },
    {
      'title': 'Profile',
      'image': 'assets/images/profile.png',
      'message': 'Design your profile page now!',
    },
  ];
  List<String> Foods = [
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
  ];

  @override
  void initState() {
    super.initState();
    onChange = (value) {
      setState(() {
        toggleButtonIndex = value;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: getHomePageScreen(selectedItem),
      ),
      bottomNavigationBar: toggleButtonIndex == 1 && Recipes.length != 0
          ? null
          : CustomBotNavBar(
              iconList: [
                Icons.home_rounded,
                Icons.search,
                Icons.camera_alt,
                Icons.favorite,
                Icons.person_sharp
              ],
              defaultSelectedIndex: 3,
              onChange: (val) {
                setState(() {
                  selectedItem = val;
                  title = homePageScreensContent[val]['title'];
                });
              },
            ),
    );
  }

  getHomePageScreen(int selectedItem) {
    if (selectedItem == 3)
      return FavoritesScreen(
          onChange: onChange, Foods: Foods, Recipes: Recipes);
    else
      return displayPage(selectedItem);
  }

  Container displayPage(selectedItem) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Image.asset(homePageScreensContent[selectedItem]['image'],
              height: 300, width: 270),
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              homePageScreensContent[selectedItem]['message'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lobster',
                letterSpacing: 1.5,
                fontSize: 38,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
