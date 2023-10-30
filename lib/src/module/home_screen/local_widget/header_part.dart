// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:internship_project/src/data/global_widget/search_bar.dart';
// import 'package:internship_project/src/module/home_screen/local_widget/custom_indicator.dart';
//
// class HeaderPart extends StatelessWidget {
//   const HeaderPart({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return _appBar();
//   }
// }
//
// PreferredSize _appBar() {
//   return PreferredSize(
//     preferredSize: const Size.fromHeight(150),
//     child: Container(
//       margin: const EdgeInsets.only(top: 5),
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       decoration: _boxDecoration(),
//       child: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(
//                     height: 15.h,
//                     width: 24.w,
//                     child: Image.asset('assets/icons/menu.png')),
//                 CustomSearchBar(),
//               ],
//             ),
//             CustomTabBar(),
//           ],
//         ),
//       ),
//     ),
//   );
// }
//
// BoxDecoration _boxDecoration() {
//   return BoxDecoration(
//     borderRadius: const BorderRadius.vertical(
//       bottom: Radius.circular(20),
//     ),
//     gradient: LinearGradient(
//       colors: [Colors.white, Colors.teal.shade300],
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter,
//     ),
//   );
// }
//
//
// Widget _searchBox() {
//   return SizedBox(
//     height: 35,
//     child: TextFormField(
//       textAlign: TextAlign.start,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: Colors.white,
//         prefixIcon: const Icon(Icons.search),
//         suffixIcon: InkWell(
//           child: const Icon(Icons.close),
//           onTap: () {
//           },
//         ),
//         hintText: 'Search...',
//         contentPadding: const EdgeInsets.all(0),
//         border: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//       ),
//     ),
//   );
// }

