import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:filter_list/filter_list.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.headline5,
        ),
        //backgroundColor: Color(0xffff7b59),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              icon: Icon(Icons.search),
              labelText: 'Find a recipe',
              //counterText: 'test',
              fillColor: Colors.red,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text('For You:', style: Theme.of(context).textTheme.headline5),
              Expanded(child: Container()),
              TextButton(
                  child: Text("Filter"),
                  onPressed: () => _openFilterDialog(context)),
            ],
          ),
          RecipeCard(
            title: 'Cauliflower and Veggie Pizza',
            author: 'American Heart Association',
            imagePath: 'assets/images/cauliflower_pizza.jpg',
            isFavorited: true,
            rating: 4.8,
            ratingCount: 58,
          ),
          RecipeCard(
            title: 'Sweet and Sour Chicken',
            author: 'John Doe',
            imagePath: 'assets/images/sweet_and_sour_chicken.jpg',
            rating: 3.3,
            ratingCount: 254,
          ),
          RecipeCard(
            title: 'Greek Frittata With Spinach Goat Cheese',
            imagePath: 'assets/images/greek_frittata.jpg',
            rating: 4.4,
            ratingCount: 122,
          ),
          Container(padding: EdgeInsetsDirectional.only(top: 16)),
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  static const List<String> countList = [
    "Vegetarian",
    "Gluten Free",
    "Vegan",
    "Low Calorie",
    "High Protein",
    "Keto",
    "Pescatarian",
    "No Sugar",
  ];
  List<String>? selectedCountList = [];

  void _openFilterDialog(BuildContext context) async {
    await FilterListDialog.display<String>(context,
        listData: countList,
        selectedListData: selectedCountList,
        height: 380,
        headlineText: "Tags",
        searchFieldHintText: "Find more", choiceChipLabel: (item) {
      return item;
    }, validateSelectedItem: (list, val) {
      return list!.contains(val);
    }, onItemSearch: (list, text) {
      if (list!.any(
          (element) => element.toLowerCase().contains(text.toLowerCase()))) {
        return list
            .where(
                (element) => element.toLowerCase().contains(text.toLowerCase()))
            .toList();
      } else {
        return [];
      }
    }, onApplyButtonClick: (list) {
      Navigator.pop(context);
    });
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final bool isFavorited;
  final double rating;
  final int ratingCount;

  const RecipeCard({
    Key? key,
    required this.title,
    this.author = 'Anonymous',
    required this.imagePath,
    this.isFavorited = false,
    this.rating = 5,
    this.ratingCount = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text(this.title),
                subtitle: Text('Author: ' + this.author),
                trailing: this.isFavorited
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_outline),
              ),
              Image(image: AssetImage(this.imagePath)),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(children: [
                  RatingBarIndicator(
                    rating: this.rating,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20.0,
                  ),
                  Text(' (' + this.ratingCount.toString() + ')',
                      style: Theme.of(context).textTheme.subtitle2),
                  Expanded(child: Container()),
                  TextButton(onPressed: () => {}, child: Text("Add to week")),
                ]),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ));
  }
}
