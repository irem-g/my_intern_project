import 'package:flutter/material.dart';
import 'package:my_intern_project/screens/newitem.dart';

import 'not.dart';

class Refri extends StatefulWidget {
  @override
  _RefriState createState() => _RefriState();
}

class _RefriState extends State<Refri> {
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
              "My Refrigerator",
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
              "List of items in my refrigerator",
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
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Search',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 25,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.filter_list,
                        color: Colors.grey[800],
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundedBox('Groceries', Colors.grey[400]),
                _buildRoundedBox('Diary products'),
                _buildRoundedBox('Meat products'),
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
            SizedBox(
              height: 16,
            ),
            Container(
              width: 400,
              height: 78,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          "images/patates.jpg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: 40),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Potato',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1 Day',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "0.25 Kg",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xFF715573), shape: BoxShape.circle),
                        child: Icon(
                          Icons.verified_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 400,
              height: 78,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          "images/emojione_tomato.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: 40),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tomato',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '10 Day',
                            style: TextStyle(
                              color: Color(0xFF715573),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "2 Kg",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xFF715573), shape: BoxShape.circle),
                        child: Icon(
                          Icons.verified_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
