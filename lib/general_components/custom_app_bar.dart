import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Hi, Jason',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.question_mark_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.comment),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
