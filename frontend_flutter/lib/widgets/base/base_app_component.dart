// import 'package:flutter/material.dart';

// class BaseAppComponent extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }

// enum CustomAppBarStyle {
//   style1,
//   style2,
//   style3,
// }

import 'package:flutter/material.dart';
import 'package:fluttertest/pages/FoodScan/foodScanMain.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/pages/MealCalendar/mealCalendarMain.dart';
import 'package:fluttertest/widgets/base/custom_app_bar.dart';
import 'package:fluttertest/widgets/base/custom_bottom_navigation.dart';

// class BaseScreen extends StatefulWidget {
//   final String title;
//   final Widget body;
//   final String profileImageUrl;

//   const BaseScreen({
//     super.key,
//     required this.title,
//     required this.body,
//     required this.profileImageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     var _selectedIndex;
//     return Scaffold(
//       drawer: Drawer(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         child: SafeArea(
//           child: ListView(
//             padding:
//                 EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
//             children: [
//               _buildDrawerHeader(context),
//               Divider(
//                 indent: 10,
//                 endIndent: 10,
//                 color: Colors.grey.shade300, // Or any color
//                 thickness: 0.5, // Line thickness
//                 height: 20, // Space above and below
//               ),
//               _buildDrawerMenuItems(context),
//             ],
//           ),
//         ),
//       ),
//       appBar: CustomAppBar(
//         title: title,
//         profileImageUrl: profileImageUrl,
//       ),
//       body: Padding(
//           padding: const EdgeInsets.only(
//               bottom: 5), // Adjust based on height of your bottom widget
//           child: body),
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
//         width: 72,
//         height: 72,
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

//   Widget _buildDrawerHeader(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 12.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.logout, color: Colors.grey),
//                 onPressed: () {
//                   print('Logout tapped');
//                 },
//               ),
//             ],
//           ),
//         ),
//         CircleAvatar(
//           radius: 40,
//           backgroundImage: NetworkImage(profileImageUrl),
//           backgroundColor: Colors.transparent,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           'Cherrel Tan',
//           style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                 color: Theme.of(context).primaryColor,
//                 fontWeight: FontWeight.bold,
//               ),
//         ),
//         const SizedBox(height: 5),
//         TextButton(
//           onPressed: () {
//             print('View Profile clicked');
//             // Navigate to profile screen
//           },
//           child: const Text("View Profile"),
//         )
//       ],
//     );
//   }

//   Widget _buildDrawerMenuItems(BuildContext context) {
//     final textColor =
//         Theme.of(context).textTheme.headlineMedium?.color ?? Colors.black;

//     return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       ListTile(
//         leading: Icon(
//           Icons.accessibility,
//           color: textColor,
//         ),
//         title: Text(
//           'Body Details',
//           style: TextStyle(color: textColor),
//         ),
//         onTap: () {
//           print('Body Details tapped');
//           Navigator.pop(context);
//         },
//       ),
//       ListTile(
//         leading: Icon(
//           Icons.settings,
//           color: textColor,
//         ),
//         title: Text(
//           'Settings',
//           style: TextStyle(color: textColor),
//         ),
//         onTap: () {
//           print('Settings tapped');
//         },
//       ),
//     ]);
//   }

//   @override
//   State<BaseScreen> createState() => _BaseScreenState();
// }

class BaseScreen extends StatefulWidget {
  final num userId;
  final String userName;
  const BaseScreen({super.key, required this.userId, required this.userName});

  // final String title;
  // final Widget body;
  // final String profileImageUrl;

  // const BaseScreen({
  //   super.key,
  //   required this.title,
  //   required this.body,
  //   required this.profileImageUrl,
  // });

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  late List<PageItem> _pages;

  @override
  void initState() {
    super.initState();

    _pages = [
      PageItem(
          title: 'Home',
          page: MainHomePage(userId: widget.userId, userName: widget.userName)),
      PageItem(
          title: 'Meal Calendar',
          page: MealCalendarMain(userId: widget.userId)),
      PageItem(title: 'Scan Food', page: FoodScanMain()),
    ];
  }

  Widget _buildDrawerHeader(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.logout, color: Colors.grey),
                onPressed: () {
                  print('Logout tapped');
                },
              ),
            ],
          ),
        ),
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=1"),
          backgroundColor: Colors.transparent,
        ),
        const SizedBox(height: 10),
        Text('Cherrel Tan', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 5),
        TextButton(
          onPressed: () {
            print('View Profile clicked');
          },
          child: const Text("View Profile"),
        )
      ],
    );
  }

  Widget _buildDrawerMenuItems(BuildContext context) {
    final textColor =
        Theme.of(context).textTheme.headlineMedium?.color ?? Colors.black;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: Icon(Icons.accessibility, color: textColor),
          title: Text('Body Details', style: TextStyle(color: textColor)),
          onTap: () {
            print('Body Details tapped');
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings, color: textColor),
          title: Text('Settings', style: TextStyle(color: textColor)),
          onTap: () {
            print('Settings tapped');
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fabSize = screenWidth *
        0.18; // 18% of screen width, roughly ~72 on standard phones
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: ListView(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            children: [
              _buildDrawerHeader(context),
              Divider(
                indent: 10,
                endIndent: 10,
                color: Colors.grey.shade300,
                thickness: 0.5,
                height: 20,
              ),
              _buildDrawerMenuItems(context),
            ],
          ),
        ),
      ),
      appBar: CustomAppBar(
        title: _pages[_selectedIndex].title,
        profileImageUrl: "https://i.pravatar.cc/150?img=1",
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: _pages[_selectedIndex].page,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: fabSize,
        height: fabSize,
        decoration: const ShapeDecoration(
          color: Color(0xFFEF2A39),
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0x66000000),
              blurRadius: 16,
              offset: Offset(0, 5),
              spreadRadius: 5,
            ),
          ],
        ),
        child: IconButton(
          icon: const Icon(Icons.add, color: Colors.white),
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
        ),
      ),
    );
  }
}

class PageItem {
  final String title;
  final Widget page;

  const PageItem({required this.title, required this.page});
}
