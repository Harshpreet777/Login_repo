import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sign/screens/home_screen.dart';

import 'package:sign/widget/text_field.dart';

class LoginPage extends StatefulWidget {
  final ValueChanged<String>? onSubmit;
  const LoginPage({super.key, this.onSubmit});
  

  @override
  State<LoginPage> createState() => _LoginClassState();
}

class _LoginClassState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  // final String _name = '';
  final TextEditingController _controller=TextEditingController();
  final TextEditingController _controller2=TextEditingController();

@override
void dispose(){
  _controller.dispose();
  debugPrint("statement");
  log("message");
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        key: _formKey,
        child: ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 30),
                  color: Colors.blue,
                  
                  child: const Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Container(
                //     padding: const EdgeInsets.symmetric(horizontal: 30),
                //     child: Material(
                //       elevation: 20,
                //       shadowColor: Colors.black,

                //       child: TextField(
                //         style: const TextStyle(color: Colors.white),
                //         decoration: InputDecoration(
                //             prefixIcon: const Icon(Icons.mail),
                //             prefixIconColor: Colors.white,
                //             hintText: 'Enter Your Mail',
                //             hintStyle: const TextStyle(color: Colors.white),
                //             fillColor: Colors.blue,
                //             filled: true,
                //             border: OutlineInputBorder(
                //                  borderRadius: BorderRadius.circular(0),
                //                 borderSide: BorderSide.none)),
                //       ),
                //     )),
                TextFieldWidget(
                
                  
                  //controller: _controller,
                  controller:_controller,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email id';
                      }
                      if (value.length < 4) {
                        return 'Too Short';
                      }
                      if(!value.contains('@')){
                        return '@ is required';
                      }
                      return null;
                    },
                    obscuretext: false,
                    hinttext: 'Enter Your Email',
                    images: (Icons.mail)),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 30),
                  
                  
                  child: const Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // const MyCustomForm(),
                // Container(
                //     padding: const EdgeInsets.symmetric(horizontal: 30),
                //     child: Material(
                //       elevation: 20,
                //       shadowColor: Colors.black,
                //       child: TextField(
                //         style: const TextStyle(color: Colors.white),
                //         obscureText: true,
                //         decoration: InputDecoration(
                //           prefixIcon: const Icon(
                //             Icons.lock,
                //           ),
                //           prefixIconColor: Colors.white,
                //           hintText: 'Enter Your Password',
                //           hintStyle: const TextStyle(color: Colors.white),
                //           filled: true,
                //           fillColor: Colors.blue,
                //           border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(0),
                //               borderSide: BorderSide.none),
                //         ),
                //       ),
                //     )),

                TextFieldWidget(
                 controller: _controller2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some value';
                    }
                    if (value.length < 4) {
                        return 'Too Short';
                      }
                    return null;
                  },

                  
                  obscuretext: true,
                  hinttext: 'Enter Your Password',
                  images: (Icons.lock),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 30),
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: null,
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                buildButton(context),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '-OR-',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sign in with',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          elevation: MaterialStatePropertyAll(15),
                          shadowColor: MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(CircleBorder())),
                      child: Image.network(
                        'https://www.freepnglogos.com/uploads/aqua-blue-f-facebook-logo-png-22.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          elevation: MaterialStatePropertyAll(15),
                          shadowColor: MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(CircleBorder())),
                      child: Image.network(
                        'https://www.freepnglogos.com/uploads/google-favicon-logo-20.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have a Account? ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    elevation: MaterialStatePropertyAll(10),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.fromLTRB(130, 10, 130, 10)),
                    shadowColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.white,
                        content: Text(
                          'Signing In',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                        )
                        );
                  //  return  _name.isNotEmpty ? widget.onSubmit!(_name):null;
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeScreen())));
                  }
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              );
  }
}
