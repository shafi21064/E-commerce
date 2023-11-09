import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import '../../home_package.dart';



class BestSalesProduct extends StatefulWidget {
  const BestSalesProduct({super.key});

  @override
  State<BestSalesProduct> createState() => _BestSalesProductState();
}

class _BestSalesProductState extends State<BestSalesProduct> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      //height: MediaQuery.sizeOf(context).height,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemProvider.itemList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          //crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemBuilder:(context, index) {
          return ProductCard(
            onCartTap: (){
                itemProvider.setAddToCart(index);
                if(itemProvider.itemList[index]['in_cart'] == true){
                  const snackBar = SnackBar(
                    duration: Duration(seconds: 1),
                      backgroundColor: CustomColor.primaryColor,
                      content: Text('Added to Cart')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                else{
                  const snackBar = SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: CustomColor.primaryColor,
                      content: Text('Remove from Cart')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }

            },
            onTap: (){
              pushNewScreen(
                context,
                screen: DetailsScreen(
                  onPress:(){
                    setState(() {
                      itemProvider.setIsFavorite(index);
                      if(itemProvider.itemList[index]['is_favorite'] == true){
                        const snackBar = SnackBar(
                            backgroundColor: CustomColor.primaryColor,
                            content: Text('Added to Wishlist')
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }else{
                        const snackBar = SnackBar(
                            backgroundColor: CustomColor.primaryColor,
                            content: Text('Remove from Wishlist')
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    });
                  },
                    productImage: itemProvider.itemList[index]['image']['big_size'],
                  productPrice: itemProvider.itemList[index]['price'].toString(),
                  productSubtitle: itemProvider.itemList[index]['sub_title'],
                  productSpecialPrice: itemProvider.itemList[index]['special_price'].toString(),
                  index: index,
                  favorite: itemProvider.itemList[index]['is_favorite'],
                  description: itemProvider.itemList[index]['details'],
                  specification: itemProvider.itemList[index]['specification'],
                ),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            productImage: itemProvider.itemList[index]['image']['little_size'],
            productName: itemProvider.itemList[index]['name'],
            productPrice: itemProvider.itemList[index]['special_price'].toString(),
            addToCart: itemProvider.itemList[index]['in_cart'],
          );
        },),
    );
  }
}

