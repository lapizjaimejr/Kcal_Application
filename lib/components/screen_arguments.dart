class FoodScreenArguments {
  final String image,
      text,
      altname,
      desc,
      trivia,
      galimage1,
      galimage2,
      galimage3;

  FoodScreenArguments(
    this.image,
    this.text,
    this.altname,
    this.desc,
    this.trivia,
    this.galimage1,
    this.galimage2,
    this.galimage3,
  );
}

class RecipeScreenArguments {
  final String text;
  final String image;
  final String time;
  final String serving;
  final String recipeDesc;
  final String ingimage1;
  final String ingimage2;
  final String ingimage3;
  final String ingimage4;
  final String ingname1;
  final String ingname2;
  final String ingname3;
  final String ingname4;
  final String ingmeasure1;
  final String ingmeasure2;
  final String ingmeasure3;
  final String ingmeasure4;
  final String step1;
  final String step2;
  final String step3;

  RecipeScreenArguments(
    this.text,
    this.image,
    this.time,
    this.serving,
    this.recipeDesc,
    this.ingimage1,
    this.ingimage2,
    this.ingimage3,
    this.ingimage4,
    this.ingname1,
    this.ingname2,
    this.ingname3,
    this.ingname4,
    this.ingmeasure1,
    this.ingmeasure2,
    this.ingmeasure3,
    this.ingmeasure4,
    this.step1,
    this.step2,
    this.step3,
  );
}
