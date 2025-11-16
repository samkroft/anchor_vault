import 'package:flutter/material.dart';
import '../widgets/top_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TopNav(),
        Expanded(
          child: Center(
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
