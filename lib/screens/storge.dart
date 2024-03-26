import 'package:flutter/material.dart';
import 'package:my_intern_project/screens/newitem.dart';
import 'package:my_intern_project/screens/search.dart';

import 'not.dart';

class Storge extends StatefulWidget {
  @override
  _StorgeState createState() => _StorgeState();
}

class _StorgeState extends State<Storge> {
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
              "Storge Tips",
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
              "List of Storage Tips",
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
            SizedBox(height: 12),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const ListTile(
                title: Text("Tomatoe"),
                subtitle: Text(
                    "Levy recommends storing ripe tomatoes upside down (stem-side down) on paper towels in an open container such as Tupperware, a shoe box, or a cardboard flat."),
              ),
            ),
            const Divider(
              height: 5,
            ),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const ListTile(
                title: Text("Potato"),
                subtitle: Text(
                    "As a rule of thumb, the best place to store potatoes is in a cool, dry area of your kitchen, with good ventilation and out of direct sunlight. A kitchen cupboard or closet, even the basement or garage, can all the good choices."),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
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
