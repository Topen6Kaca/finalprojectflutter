import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFFF6DA7),
          title: Text(
            "About Me",
          ),
        ),
        backgroundColor: Color(0XFFFF6DA7),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('./assets/img/rio_image.jpeg'),
            ),
            Text(
              "Rio Fahlevi",
              style: TextStyle(
                  fontFamily: 'Pacifico1',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.5,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 50.0,
              child: Divider(color: Colors.white),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color(0XFFFF6DA7),
                ),
                title: Text(
                  "+62 812 5347 6467",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0XFFFF6DA7)),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Color(0XFFFF6DA7),
                ),
                title: Text(
                  "riofahlevi2011@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Color(0XFFFF6DA7),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(primary: Color(0XFFFF6DA7)),
              icon: Icon(
                Icons.pages,
                color: Colors.white,
                size: 20.0,
              ),
              label: Text("Back To Home"),
            )
          ],
        )),
      ),
    );
  }
}
