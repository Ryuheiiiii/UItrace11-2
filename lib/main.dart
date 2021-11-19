import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:untitled7/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              const SizedBox(height: 80,),
              SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset('images/UItrace11-2.png')
              ),
              const SizedBox(height: 30,),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [TextSpan(text: '  Sign up to spend more time with your \nfriends ',
                    style: TextStyle(
                      color:Colors.black45,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),),
                    TextSpan(
                        text: 'IRL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(text: ' and deiscover fun things to do \n                               together.',
                        style: TextStyle(
                          color:Colors.black45,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),),
              const SizedBox(height: 50,),
              SizedBox(
                height: 50,
                width: 260,
                child: SignInButton(
                  Buttons.Google,
                  text: "Continue with Google",
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 0.0,
                ),),
              const SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 260,
                child: SignInButtonBuilder(
                  text: 'Sign up with email or phone',
                  icon: Icons.email,
                  onPressed: () {},
                  backgroundColor: Color(0xFFefefef),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  textColor: Colors.grey,
                  iconColor: Colors.grey,
                  elevation: 0.0,
                ),),
              const SizedBox(height: 7,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                      style: TextStyle(
                          color: Colors.grey
                      ),),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyhomePage(),),
                        );
                        },
                      child: Text('Log in',
                        style: TextStyle(
                            color: Colors.blue
                        ),),
                    ),
                  ],
              ),
            ],
        ),
    );
  }
}
