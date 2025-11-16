import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> menuItems = const [
    'Home',
    'Products',
    'Services',
    'About',
    'Contact'
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 700;

        return Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
            actions: isMobile
                ? null
                : menuItems
                    .map(
                      (item) => TextButton(
                        onPressed: () {},
                        child: Text(
                          item,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                    .toList(),
          ),

          // Drawer for mobile
          drawer: isMobile
              ? Drawer(
                  child: ListView(
                    children: [
                      const DrawerHeader(
                        child: Text("Menu"),
                      ),
                      ...menuItems.map(
                        (item) => ListTile(
                          title: Text(item),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                )
              : null,

          body: const Center(
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    );
  }
}
