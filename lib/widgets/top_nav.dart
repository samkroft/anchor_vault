import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "MyApp",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Row(
            children: [
              _navItem("Home"),
              _navItem("About"),
              _navItem("Services"),
              _navItem("Blog"),
              _navItem("Contact"),
            ],
          )
        ],
      ),
    );
  }

  Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
