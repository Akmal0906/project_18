import 'package:flutter/material.dart';

class DetaillPage extends StatefulWidget {
  static final String id = 'detail_page';

  @override
  State<DetaillPage> createState() => _DetaillPageState();
}

class _DetaillPageState extends State<DetaillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter course'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              height: 250,
            ),
            Container(
              color: Colors.red,
              height: 250,
            ),
            Container(
              color: Colors.deepPurpleAccent,
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
