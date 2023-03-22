import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Shaghal"),
      centerTitle: true,
      // optional
      backgroundColor: Colors.blue,
      // optional
      leading: IconButton(
        icon: const Icon(Icons.chat_bubble_outline_rounded),
        onPressed: () {
          // handle search button press
        },
      ),

      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // handle search button press
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            // handle overflow menu button press
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
