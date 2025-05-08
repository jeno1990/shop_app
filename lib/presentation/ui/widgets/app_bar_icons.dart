import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final int? size;

  const AppBarIcons({
    super.key,
    required this.icon,
    required this.onTap,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: Icon(
              icon,
              color: Colors.black54,
            ),
          ),
          if (size != null)
            Positioned(
              right: 0,
              bottom: 0,
              child: Text(size!.toString(),
                  style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            ),
        ],
      ),
    );
  }
}
