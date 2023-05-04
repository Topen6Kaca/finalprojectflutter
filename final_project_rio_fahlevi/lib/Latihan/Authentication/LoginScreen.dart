import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:sanber_app_flutter/Latihan/Authentication/HomeScreen.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

    double getSmallDiamater(BuildContext context) =>
        MediaQuery.of(context).size.width * 2 / 3;

    double getBigDiameter(BuildContext context) =>
        MediaQuery.of(context).size.width * 7 / 8;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          right: -getSmallDiamater(context) / 3,
          top: -getSmallDiamater(context) / 3,
          child: Container(
            width: getSmallDiamater(context),
            height: getSmallDiamater(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFB226B2), Color(0XFFFF6DA7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
        ),
        Positioned(
          left: -getBigDiameter(context) / 4,
          top: -getBigDiameter(context) / 4,
          child: Container(
            child: Center(
              child: Text(
                "Latihan Auth",
                style: TextStyle(
                    fontFamily: 'Pacifico1', fontSize: 25, color: Colors.white),
              ),
            ),
            width: getBigDiameter(context),
            height: getBigDiameter(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
          right: -getBigDiameter(context) / 2,
          bottom: -getBigDiameter(context) / 2,
          child: Container(
            width: getBigDiameter(context),
            height: getBigDiameter(context),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF3E9EE)),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFFF4891),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFF4891))),
                        labelText: "Email:",
                        labelStyle: TextStyle(
                          color: Color(0xFFFF4891),
                        ),
                      ),
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Color(0xFFFF4891),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFf4891))),
                        labelText: "Password:",
                        labelStyle: TextStyle(color: Color(0xFFFF4891)),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xFFFF4891)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.amber,
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }));
                            },
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFB226B2),
                              Color(0xffff4891),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: Text("Login"),
                        onPressed: () async {
                          await _firebaseAuth
                              .createUserWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text)
                              .then((value) => Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (context) => HomeScreen())
                                      ));
                        },
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: Text("Register"),
                        onPressed: () async {
                          await _firebaseAuth.createUserWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text);
                        },
                      ),
                    ),
                    FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        mini: true,
                        child: Image(
                          image: AssetImage("../assets/icon/facebook.png"),
                        )),
                    FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        mini: true,
                        child: Image(
                          image: AssetImage("../assets/icon/twitter.png"),
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    " DON'T HAVE AN ACCOUNT?",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " SIGN UP ",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
