import 'package:flutter/material.dart';

class Signup extends StatefulWidget {

  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText=true;
  bool _obscureText1=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                 height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [

                      Text(
                        "Sign Up ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Anton'),
                      )
                    ],
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 200),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const   SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person,color: Colors.black,),
                                fillColor: const Color(0xffEDEEF2),
                                filled: true,
                                hintText: "First Name ",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffEDEEF2),
                              prefixIcon: const Icon(Icons.person,color: Colors.black,),
                              hintText: "Last Name  ",
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(20),

                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(20),

                              ),

                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email,color: Colors.black,),
                                hintText: "Enter Your Email",
                                fillColor: const Color(0xffEDEEF2),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border:OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius:BorderRadius.circular(20)
                                )
                            ),
                          ),

                        ),
                        const SizedBox(height: 30,),
                        Padding(padding:
                        const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                hintText: "Password",
                                fillColor: const Color(0xffEDEEF2),
                                filled: true,
                                prefixIcon: const Icon(Icons.password,color: Colors.black,),
                                suffixIcon: GestureDetector(
                                  child: Icon(
                                    _obscureText ? Icons.visibility : Icons.visibility_off,color: Colors.black,),
                                  onTap: (){
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),

                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                )
                            ),


                          ),
                        ),
                        const SizedBox(height: 30,),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            obscureText: _obscureText1,
                            decoration: InputDecoration(
                              hintText: "Conform Password",
                              prefixIcon: const Icon(Icons.password,color: Colors.black,),
                              suffixIcon: GestureDetector(
                                child: Icon(
                                  _obscureText1 ? Icons.visibility : Icons.visibility_off,color: Colors.black,),
                                onTap: (){
                                  setState(() {
                                    _obscureText1 =!_obscureText1;
                                  });
                                },
                              ),
                              filled: true,
                              fillColor: const Color(0xffEDEEF2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Colors.black
                                )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child :const Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Anton'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "I Have Account ?",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'Anton'),),
                            GestureDetector(
                              child: const Text(
                                "Login",
                                style:  TextStyle(
                                    fontSize: 15,
                                    color: Colors.deepOrangeAccent,
                                    fontFamily: 'Anton'),),
                              onTap: (){
                                Navigator.pop(context);
                              },
                            ),



                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
