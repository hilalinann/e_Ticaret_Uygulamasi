import 'package:flutter/material.dart';
import 'package:youtube_proje/screens/forgot_screen.dart';
import 'package:youtube_proje/screens/home_screen.dart';
import 'package:youtube_proje/screens/navigation_screen.dart';
import 'package:youtube_proje/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:30),
                Image.asset("images/freed.png"),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon:Icon(Icons.email),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: OutlineInputBorder(),
                          prefixIcon:Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>ForgotScreen(),
                              ));
                        },
                        child: Text("Forgot Password",
                          style: TextStyle(
                            color: Color(0xFFDB3022),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),),
                      SizedBox(height: 40),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>NavigationScreen(),
                          ));
                      },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color(0xFFDB3022),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                            ),
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=> SignUpScreen(),
                                ));
                          },
                            child: Text("Sign Up",
                            style: TextStyle(
                                color: Color(0xFFDB3022),
                                fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),),
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
