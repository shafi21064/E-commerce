import 'package:flutter/material.dart';
import 'package:internship_project/src/data/global_widget/text_widget.dart';
import 'package:internship_project/src/module/checkout/checkout_pakage.dart';
import 'package:internship_project/src/module/favorite/local_widget/favorite_item_list.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          title: 'Favorite',
          color: Colors.blue,
          fontSize: 20,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: CustomColor.backgroundColor,
      body: FavoriteItemList(),
    );
  }
}