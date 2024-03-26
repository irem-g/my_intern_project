import 'package:flutter/material.dart';
import 'package:my_intern_project/screens/refri.dart';
import 'package:my_intern_project/screens/search.dart';
import 'package:my_intern_project/screens/setting.dart';

import 'alert.dart';
import 'chat.dart';
import 'not.dart';

int currentTab = 0; // to keep track of active tab index
final List<Widget> screens = [
  Refri(),
  Chat(),
  Profile(),
  Settings(),
  Alert(),
];
final PageStorageBucket bucket = PageStorageBucket();
Widget currentScreen = Refri();

class Item extends StatelessWidget {
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
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Color(0xFF575E71),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Alert()));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color(0xFF76517B),
          notchMargin: 10,
          child: SingleChildScrollView(
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Refri();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.kitchen,
                              color:
                                  currentTab == 0 ? Colors.black : Colors.white,
                            ),
                            Text(
                              'Refrigerator',
                              style: TextStyle(
                                color: currentTab == 0
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Chat();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.menu_book,
                              color:
                                  currentTab == 1 ? Colors.black : Colors.white,
                            ),
                            Text(
                              'Recipes',
                              style: TextStyle(
                                color: currentTab == 1
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Profile();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.tips_and_updates_outlined,
                              color:
                                  currentTab == 2 ? Colors.black : Colors.white,
                            ),
                            Text(
                              'Storage Tips',
                              style: TextStyle(
                                color: currentTab == 2
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                Settings(); // if user taps on this dashboard tab will be active
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.person_outline,
                              color:
                                  currentTab == 3 ? Colors.black : Colors.white,
                            ),
                            Text(
                              'My Profile',
                              style: TextStyle(
                                color: currentTab == 3
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
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
              "Add New Item",
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
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://www.vegetables.bayer.com/content/dam/bayer-vegetables/product-photography/tomato/Seminis_Tomato_FDR8565.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 200.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: _buildWhiteRoundedBox('Purchase Date'),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: _buildWhiteRoundedBox('Expiration Date'),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: _buildWhiteRoundedBox('Quantity'),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: _buildWhiteRoundedBox('Unit'),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: _buildWhiteRoundedBox('Market Name'),
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
                              hintText: 'Notes...',
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
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
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

  void setState(Null Function() param0) {}
}
