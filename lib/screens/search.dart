import 'package:flutter/material.dart';
import 'package:my_intern_project/screens/newitem.dart';
import 'package:my_intern_project/screens/storge.dart';

import 'not.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              fontFamily: 'Ibarra Real Nova',
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
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Add Tip",
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
              "Add Storge Tips",
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildRoundedBox('Groceries', Colors.grey[400]),
                          _buildRoundedBox('Diary products'),
                          _buildRoundedBox('Meat products'),
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
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Expanded(
                            child: _buildWhiteRoundedBox(' Name'),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: [
                            TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: 'Details...',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Add your button press logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black, // Background color
                          padding: EdgeInsets.all(16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Text(
                          'Procced',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFFFEFBFF),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Storge()));
          },
          child: Icon(
            Icons.tips_and_updates_outlined,
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

Widget _buildWhiteRoundedBox(String text) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 18.0),
    ),
  );
}
