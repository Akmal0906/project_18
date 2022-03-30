import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static final String id = 'first_page';

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter course'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.deepPurple,
            child: Center(
              child: Text('Home Page'),
            ),
          ),
          Container(
            color: Colors.indigo,
            child: Center(
              child: Text('business page'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.business)),
        ],
      ),
    );
  }
}
