import 'package:flutter/material.dart';

import 'Signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _State();
}

class _State extends State<Login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/login.png'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "If you have account login here ",
                  style: TextStyle(color: Colors.white, fontFamily: 'Anton'),
                )
              ],
            )),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Container(
            width: double.infinity,
            height: 550,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40, color: Colors.black, fontFamily: 'Anton'),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        hintText: "Inter Your Email ",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      hintText: "Inter Your Password ",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Forget Password ",
                        style: TextStyle(decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Anton'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't Have Account ?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Anton'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.amberAccent,
                            fontFamily: 'Anton'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
