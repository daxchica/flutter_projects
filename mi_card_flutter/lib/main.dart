import 'package:flutter/material.dart';
import 'package:flutter/src/material/circle_avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                radius: 65.0,
                //backgroundColor: Colors.white,
                backgroundImage: AssetImage("images/dax_chica_1.png"),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Dax Chica',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'MBA, Economist, Data Analyst, App Developer',
                style: TextStyle(color: Color(0xffffffff), fontSize: 16),
              ),
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.white54,
                  height: 10.0,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+593 9 93979934',
                    style: (TextStyle(
                        fontSize: 18, color: Colors.black, wordSpacing: 2)),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'daxchica@hotmail.com',
                    style: (TextStyle(fontSize: 18)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
