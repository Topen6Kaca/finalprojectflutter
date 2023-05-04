import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sanber_app_flutter/Latihan/Authentication/LoginScreen.dart';
import 'package:sanber_app_flutter/Tugas/Tugas12/DrawerScreen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser!.email);
    }

    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff4891),
        title: Text(" Home "),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      backgroundColor: Color.fromARGB(229, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                  color: Color(0xffff4891),
                ),
                IconButton(
                  icon: Icon(Icons.extension),
                  onPressed: () {},
                  color: Color(0xffff4891),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Welcome, \n",
                      style: TextStyle(
                        color: Color(0xffff4891),
                        fontFamily: 'Pacifico1',
                        fontSize: 40,
                      )),
                  TextSpan(
                      text: auth.currentUser?.email,
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'Pacifico1',
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 10,
                  color: Color(0xffff4891),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffff4891))),
                hintText: "Search",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Recomended Place",
              style: TextStyle(
                  color: Color(0xffff4891),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Pacifico1"),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  _signOut().then((value) => Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen())));
                },
                child: Text("Logout"),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xffff4891),
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 0,
          onTap: (int i) => print('click index = $i')),
    );
    return scaffold;
  }
}

final countries = ["Tokyo", "Australia", "LosAngeles", "Washington"];
