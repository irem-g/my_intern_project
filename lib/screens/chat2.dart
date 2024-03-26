import 'package:flutter/material.dart';

import 'newitem.dart';
import 'not.dart';

class Chattwo extends StatefulWidget {
  @override
  _ChattwoState createState() => _ChattwoState();
}

class _ChattwoState extends State<Chattwo> {
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
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Recipes",
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
              "List of shared recipes",
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
                        icon: Icon(Icons.search, color: Colors.grey),
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
              height: 12,
            ),
            Container(
              width: 400,
              height: 480,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image(
                image: AssetImage('images/ceasar.png'),
                width: 350,
                height: 350,
              ),
            ),
            Container(
              width: 400,
              height: 88,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up_alt_outlined,
                        color: Color(0xFF715573)),
                    onPressed: () {},
                  ),
                  Text(
                    "1.5 K",
                    style: TextStyle(
                      color: Color(0xFF575E71),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.comment,
                      color: Color(0xFF715573),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "250",
                    style: TextStyle(
                      color: Color(0xFF575E71),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.airplane_ticket_outlined,
                      color: Color(0xFF715573),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "25",
                    style: TextStyle(
                      color: Color(0xFF575E71),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Color(0xFF715573),
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        "150",
                        style: TextStyle(color: Color(0xFF575E71)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 78,
              decoration: BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ceasar Salad",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "A Caesar salad is a green salad of romaine lettuce and croutons dressed with lemon juice, olive oil, egg, Worcestershire sauce, anchovies, garlic, Dijon mustard, Parmesan cheese, and black pepper. In its original form, this salad was prepared and served"),
                  ],
                ),
              ),
            ),
          ]),
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
