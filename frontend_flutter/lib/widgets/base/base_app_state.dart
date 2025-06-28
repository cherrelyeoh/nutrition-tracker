// import 'package:flutter/material.dart';
// import 'package:fluttertest/pages/Homepage/main.dart';
// import 'package:fluttertest/pages/MealCalendar/mealCalendarMain.dart';
// import 'package:fluttertest/widgets/base/base_app_component.dart';
// import 'package:fluttertest/widgets/base/custom_bottom_navigation.dart';

// class _BaseScreenState extends State<BaseScreen> {
//   int _selectedIndex = 0;
//   final List<Widget> _pages = [
//     MainHomePage(),
//     MealCalendarMain(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("widget.title")),
//       // drawer: Drawer(/* your drawer */),
//       // body: widget.body,
//       body: _pages[_selectedIndex], // ⬅ switch content here
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onItemTapped: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: Container(
//         width: MediaQuery.of(context).size.width * 0.1,
//         height: MediaQuery.of(context).size.width * 0.1,
//         decoration: const ShapeDecoration(
//           color: Color(0xFFEF2A39),
//           shape: OvalBorder(),
//           shadows: [
//             BoxShadow(
//               color: Color(0x66000000),
//               blurRadius: 16,
//               offset: Offset(0, 5),
//               spreadRadius: 5,
//             ),
//           ],
//         ),
//         child: IconButton(
//           icon: const Icon(Icons.add, color: Colors.white),
//           onPressed: () {
//             print('Central action tapped');
//           },
//         ),
//       ),
//     );
//   }
// }
