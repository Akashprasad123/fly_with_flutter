import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        elevation: 15,
        shadowColor: Colors.black,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Color.fromARGB(255, 26, 51, 213),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 13, 70, 116),
        elevation: 10,
        shadowColor: Colors.black,
        child: SafeArea(
          child: Container(
            child: ListView(
              children: const [
                SizedBox(
                  height: 10,
                ),
                UserAccountsDrawerHeader(
                  accountName: Text("Akash Prasad"),
                  accountEmail: Text(
                    "abc@example.com",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
