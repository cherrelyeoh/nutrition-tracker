import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String profileImageUrl;
  final VoidCallback? onNotificationTap;
  final bool returnBackArrow;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.profileImageUrl,
    this.onNotificationTap,
    this.returnBackArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading:
          returnBackArrow, // removes back button if not needed
      elevation: 4,
      backgroundColor: Colors.grey[900],
      titleSpacing: 0,
      title: Row(
        children: [
          const SizedBox(width: 10),
          // Profile picture
          Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer(); // ✅ Open the drawer
              },
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(profileImageUrl),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          const SizedBox(width: 10),
          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white),
          onPressed: onNotificationTap ?? () {},
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // 👈 required
}
