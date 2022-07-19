// ignore_for_file: use_build_context_synchronously

import 'package:codepurflutter/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),

              Text(
                'Welcome $name',
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter a user name",
                        labelText: "UserName",
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "please enter a UserName";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter the password",
                        labelText: "Password",
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "please enter a Password";
                        } else if (value.length < 6) {
                          return "password length should be atleast 6 character";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                            shape: changeButton
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            // borderRadius: BorderRadius.circular(10),
                            color:
                                changeButton ? Colors.deepPurple : Colors.red),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        // color: Colors.deepPurple,
                        alignment: Alignment.center,
                        duration: const Duration(seconds: 1),
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(
                    //     minimumSize: const Size(150, 50),
                    //   ),
                    //   child: const Text(
                    //     'Login',
                    //     style: TextStyle(fontSize: 20),
                    //   ),
                    // )
                  ],
                ),
              )
              // const SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
