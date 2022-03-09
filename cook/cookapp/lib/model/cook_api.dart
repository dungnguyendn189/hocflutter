// To parse this JSON data, do
//
//     final cookdata = cookdataFromJson(jsonString);

import 'dart:convert';

Cookdata cookdataFromJson(String cookDataRespone) =>
    Cookdata.fromJson(json.decode(cookDataRespone));

class Cookdata {
  Cookdata({
    this.meals,
  });

  List<Meal>? meals;

  factory Cookdata.fromJson(Map<String, dynamic> json) => Cookdata(
        meals: json["meals"] == null
            ? null
            : List<Meal>.from(json["meals"]
                .map((cookDataRespone) => Meal.fromJson(cookDataRespone))),
      );
}

class Meal {
  Meal({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  String? idMeal;
  String? strMeal;
  dynamic? strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  dynamic? strIngredient16;
  dynamic? strIngredient17;
  dynamic? strIngredient18;
  dynamic? strIngredient19;
  dynamic? strIngredient20;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  dynamic strMeasure16;
  dynamic strMeasure17;
  dynamic strMeasure18;
  dynamic strMeasure19;
  dynamic strMeasure20;
  dynamic strSource;
  dynamic strImageSource;
  dynamic strCreativeCommonsConfirmed;
  dynamic dateModified;

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        idMeal: json["idMeal"] == null ? null : json["idMeal"],
        strMeal: json["strMeal"] == null ? null : json["strMeal"],
        strDrinkAlternate: json["strDrinkAlternate"],
        strCategory: json["strCategory"] == null ? null : json["strCategory"],
        strArea: json["strArea"] == null ? null : json["strArea"],
        strInstructions:
            json["strInstructions"] == null ? null : json["strInstructions"],
        strMealThumb:
            json["strMealThumb"] == null ? null : json["strMealThumb"],
        strTags: json["strTags"] == null ? null : json["strTags"],
        strYoutube: json["strYoutube"] == null ? null : json["strYoutube"],
        strIngredient1:
            json["strIngredient1"] == null ? null : json["strIngredient1"],
        strIngredient2:
            json["strIngredient2"] == null ? null : json["strIngredient2"],
        strIngredient3:
            json["strIngredient3"] == null ? null : json["strIngredient3"],
        strIngredient4:
            json["strIngredient4"] == null ? null : json["strIngredient4"],
        strIngredient5:
            json["strIngredient5"] == null ? null : json["strIngredient5"],
        strIngredient6:
            json["strIngredient6"] == null ? null : json["strIngredient6"],
        strIngredient7:
            json["strIngredient7"] == null ? null : json["strIngredient7"],
        strIngredient8:
            json["strIngredient8"] == null ? null : json["strIngredient8"],
        strIngredient9:
            json["strIngredient9"] == null ? null : json["strIngredient9"],
        strIngredient10:
            json["strIngredient10"] == null ? null : json["strIngredient10"],
        strIngredient11:
            json["strIngredient11"] == null ? null : json["strIngredient11"],
        strIngredient12:
            json["strIngredient12"] == null ? null : json["strIngredient12"],
        strIngredient13:
            json["strIngredient13"] == null ? null : json["strIngredient13"],
        strIngredient14:
            json["strIngredient14"] == null ? null : json["strIngredient14"],
        strIngredient15:
            json["strIngredient15"] == null ? null : json["strIngredient15"],
        strIngredient16: json["strIngredient16"],
        strIngredient17: json["strIngredient17"],
        strIngredient18: json["strIngredient18"],
        strIngredient19: json["strIngredient19"],
        strIngredient20: json["strIngredient20"],
        strMeasure1: json["strMeasure1"] == null ? null : json["strMeasure1"],
        strMeasure2: json["strMeasure2"] == null ? null : json["strMeasure2"],
        strMeasure3: json["strMeasure3"] == null ? null : json["strMeasure3"],
        strMeasure4: json["strMeasure4"] == null ? null : json["strMeasure4"],
        strMeasure5: json["strMeasure5"] == null ? null : json["strMeasure5"],
        strMeasure6: json["strMeasure6"] == null ? null : json["strMeasure6"],
        strMeasure7: json["strMeasure7"] == null ? null : json["strMeasure7"],
        strMeasure8: json["strMeasure8"] == null ? null : json["strMeasure8"],
        strMeasure9: json["strMeasure9"] == null ? null : json["strMeasure9"],
        strMeasure10:
            json["strMeasure10"] == null ? null : json["strMeasure10"],
        strMeasure11:
            json["strMeasure11"] == null ? null : json["strMeasure11"],
        strMeasure12:
            json["strMeasure12"] == null ? null : json["strMeasure12"],
        strMeasure13:
            json["strMeasure13"] == null ? null : json["strMeasure13"],
        strMeasure14:
            json["strMeasure14"] == null ? null : json["strMeasure14"],
        strMeasure15:
            json["strMeasure15"] == null ? null : json["strMeasure15"],
        strMeasure16: json["strMeasure16"],
        strMeasure17: json["strMeasure17"],
        strMeasure18: json["strMeasure18"],
        strMeasure19: json["strMeasure19"],
        strMeasure20: json["strMeasure20"],
        strSource: json["strSource"],
        strImageSource: json["strImageSource"],
        strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"],
        dateModified: json["dateModified"],
      );
}
