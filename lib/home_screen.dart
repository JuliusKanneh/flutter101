import 'package:flutter/material.dart';
import 'package:flutter_101/form_screen.dart';
import 'package:flutter_101/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("homeText"),
        leading: const Icon(Icons.arrow_back),
        actions: [
          // GestureDetector(
          //   child: Icon(Icons.settings),
          //   onTap: () {
          //     print("I am tapped");
          //   },
          // ),
          IconButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return Settings();
              //     },
              //   ),
              // );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Settings();
                  },
                ),
              );
            }, //hof -> callback function
            icon: Icon(Icons.settings),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Icon(
          //     Icons.settings,
          //   ),
          // )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to my App!"),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FormScreen(),
                  ),
                );
              },
              child: const Text("Open Form"),
            ),
          ],
        ),
      ),
    );
  }
}
