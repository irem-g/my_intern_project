import 'package:flutter/material.dart';
import 'package:my_intern_project/screens/chat2.dart';

import 'newitem.dart';
import 'not.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
                "Add New Recipe",
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
                "Add item to your refrigerator",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12.0,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _buildRoundedBox('Pastries', Colors.grey[400]),
                          _buildRoundedBox('Grills'),
                          _buildRoundedBox('Soups'),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Item()));
                              // Add your button press logic here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, // Background color
                              padding: EdgeInsets.all(16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [],
                      ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("images/pizza.png"),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: RawMaterialButton(
                                  onPressed: () {},
                                  elevation: 2.0,
                                  fillColor: Color(0xFF575E71),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(10.0),
                                  shape: CircleBorder(),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 350.0,
                      height: 56.0,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 350.0,
                      height: 56.0,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        'Ingredients',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 350.0,
                      height: 90.0,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.check,
                                color: Colors.green[800],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Procced",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFEFBFF),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Chattwo()));
          },
          child: Icon(
            Icons.menu_book,
            color: Colors.white,
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
