import 'package:flutter/material.dart';

import 'scrollview.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller1 = TextEditingController();
    final controller2 = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 26, 51, 213),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 30),
                  child: Container(
                    height: 250,
                    width: 500,
                    child: const Text(
                      "Welcome...!\nLet's Fly with Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'pacific',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(children: [
                      TextFormField(
                        controller: controller1,
                        style: const TextStyle(color: Colors.white),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          labelText: "Username",
                          labelStyle: TextStyle(color: Colors.grey[400]),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller2,
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.white,
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.grey[400]),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              elevation:
                                  const MaterialStatePropertyAll<double>(10),
                              fixedSize: const MaterialStatePropertyAll<Size>(
                                  Size(200, 50)),
                              shape: MaterialStatePropertyAll<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )),
                              side: const MaterialStatePropertyAll<BorderSide>(
                                BorderSide(width: 2, color: Colors.white),
                              )),
                          onPressed: () {
                            if (controller1.text == controller2.text) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const ScrollScreen()));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Username and password must be same: ")));
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ))
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
