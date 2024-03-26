import 'package:flutter/material.dart';
import 'package:my_intern_project/screens/newitem.dart';

import 'not.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        repeat: ImageRepeat.repeat,
        image: AssetImage('images/bg.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0xFFE7E8FE),
          title: Text(
            'logo',
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 44.0,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Not()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "My Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Check your recipes and more...",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [],
              ),
              SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/pana.png"),
                    ),
                    Positioned(
                        bottom: 0,
                        right: -25,
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Color(0xFF575E71),
                          child: Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10.0),
                          shape: CircleBorder(),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 105),
                        Text("150",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 120),
                        Text("250",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 105),
                        Text("10",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 105),
                        Text("5",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 105),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 30),
                        Text("Following",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 100),
                        Text("Followers",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 100),
                        Text("Recipes",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 100),
                        Text("Favorites",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  _buildRoundedBox('Pastries', Colors.grey[400]),
                  _buildRoundedBox('Grills'),
                  _buildRoundedBox('Soups'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Item()));
                      // Add your button press logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                      padding: EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      'All',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/ceasar.png"),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/pizza.png"),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/chees.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/falaf.png"),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/tabaklar.png"),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/hamb.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/et.png"),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/çorba.png"),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset("images/pasta.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildRoundedBox(String text, [Color? color]) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 22.0),
    ),
  );
}
