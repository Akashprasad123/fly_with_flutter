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
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.8sEQq9-fsOY0T-R-vYtVqgHaIB?rs=1&pid=ImgDetMain"),
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: ScrollView(),
      ),
    );
  }
}

Widget ScrollView() {
  return ListView.separated(
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 10,
          child: InkWell(
            child: ListTile(
              title: Text("Name $index"),
              subtitle: Text('source $index'),
              onTap: () {},
            ),
          ),
        ),
      );
    },
    separatorBuilder: (context, index) {
      return SizedBox(
        height: 0,
      );
    },
    itemCount: 50,
  );
}

// Widget eachItem() {
//   return Card(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//     child: ListTile(
//       minVerticalPadding: 35,
//       leading: CircleAvatar(
//         radius: 35,
//         backgroundColor: Color.fromARGB(255, 5, 3, 134),
//       ),
//       tileColor: Colors.white,
//     ),
//   );
// }
