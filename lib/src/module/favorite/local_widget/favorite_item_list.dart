import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../favorite_package.dart';

class FavoriteItemList extends StatelessWidget {
  const FavoriteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var wishProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          itemCount: wishProvider.wishlists.length,
          itemBuilder: (context, index){
            return FavoriteItem(
              itemName: wishProvider.wishlists[index]['name'],
              itemPic: wishProvider.wishlists[index]['image']['little_size'],
              itemPrice: wishProvider.wishlists[index]['special_price'].toString(),
              onpress: (){
                  wishProvider.removeToWishlist(wishProvider.wishlists[index]);
              },
                favorite: wishProvider.wishlists[index]['is_favorite']
            );
          }
      ),
    );
  }
}
