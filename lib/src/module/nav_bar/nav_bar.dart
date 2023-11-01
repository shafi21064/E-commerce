import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/account_screen/view/account.dart';
import 'package:internship_project/src/module/cart_screen/view/cart.dart';
import 'package:internship_project/src/module/category_screen/view/category.dart';
import 'package:internship_project/src/module/home_screen/view/home.dart';
import 'package:internship_project/src/module/wishlist_screen/view/wishlist.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        screens: _buildScreens(),
      controller: controller,
      items: _tabBarItem(),
      navBarStyle: NavBarStyle.style15,
      navBarHeight: 75.h,
     padding: const NavBarPadding.only(bottom: 5),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1)
      ),

    );
  }
}

final controller = PersistentTabController(initialIndex: 2);
List<Widget> _buildScreens() {
  return [
    const Category(),
    const WishList(),
    const Home(),
    const Cart(),
    const Account(),
  ];
}
List<PersistentBottomNavBarItem>_tabBarItem(){
  return[
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/catagory.png', color: CustomColor.primaryColor,),
      title: ("Category"),
      inactiveIcon: Image.asset('assets/icons/catagory.png'),
      activeColorPrimary: CustomColor.primaryColor,

    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/wishlist.png', color: CustomColor.primaryColor),
      title: ("Wishlist"),
      inactiveIcon: Image.asset('assets/icons/wishlist.png'),
      activeColorPrimary: CustomColor.primaryColor,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/home.png'),
      activeColorPrimary: CustomColor.primaryColor,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/cart.png', color: CustomColor.primaryColor),
      title: ("Cart"),
      inactiveIcon: Image.asset('assets/icons/cart.png'),
      activeColorPrimary: CustomColor.primaryColor,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/user.png', color: CustomColor.primaryColor),
      title: ("Account"),
      inactiveIcon: Image.asset('assets/icons/user.png'),
      activeColorPrimary: CustomColor.primaryColor,
    ),
  ];
}

// import 'package:flutter/material.dart';
// import 'package:internship_project/src/data/utils/custom_color.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
//
//
// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     PersistentTabController controller;
//     controller = PersistentTabController(initialIndex: 0);
//
//     List<Widget> _buildScreens() {
//       return [
//         const Text('gg'),
//         const Text('gg'),
//         const Text('gg'),
//         const Text('gg'),
//         const Text('gg'),
//       ];
//     }
//
//     List<PersistentBottomNavBarItem> _navBarsItems() {
//       return [
//         PersistentBottomNavBarItem(
//           icon: Image.asset('assets/icons/catagory.png'),
//           title: ("category"),
//           activeColorPrimary: CustomColor.primaryColor,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Image.asset('assets/icons/wishlist.png'),
//           title: ('Wishlist'),
//           activeColorPrimary: CustomColor.primaryColor,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Image.asset('assets/icons/home.png'),
//           activeColorPrimary: CustomColor.primaryColor,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Image.asset('assets/icons/cart.png'),
//           title: ("Inbox"),
//           activeColorPrimary: CustomColor.primaryColor,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Image.asset('assets/icons/user.png'),
//           title: ("Shop"),
//           activeColorPrimary: CustomColor.primaryColor,
//           inactiveColorPrimary: Colors.grey,
//         ),
//       ];
//     }
//
//     return PersistentTabView(
//       context,
//       controller: controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       confineInSafeArea: true,
//       backgroundColor: Colors.white, // Default is Colors.white.
//       handleAndroidBackButtonPress: true, // Default is true.
//       resizeToAvoidBottomInset:
//       true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
//       stateManagement: true, // Default is true.
//       hideNavigationBarWhenKeyboardShows:
//       true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
//       decoration: NavBarDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         colorBehindNavBar: Colors.white,
//       ),
//       popAllScreensOnTapOfSelectedTab: true,
//       popActionScreens: PopActionScreensType.all,
//       itemAnimationProperties: const ItemAnimationProperties(
//         // Navigation Bar's items animation properties.
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: const ScreenTransitionAnimation(
//         // Screen transition animation on change of selected tab.
//         animateTabTransition: true,
//         curve: Curves.ease,
//         duration: Duration(milliseconds: 200),
//       ),
//       navBarStyle:
//       NavBarStyle.style15, // Choose the nav bar style with this property.
//     );
//   }
// }
