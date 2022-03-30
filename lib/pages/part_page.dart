import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PartPage extends StatefulWidget {
  static final String id = 'part_page';

  @override
  State<PartPage> createState() => _PartPageState();
}

class _PartPageState extends State<PartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Course'),
      ),
      body: Container(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _itemlist(title: 'picture', image: 'assets/images/ic_image2.jpg'),
            _itemlist(title: 'picture', image: 'assets/images/ic_image2.jpg'),
            _itemlist(title: 'picture', image: 'assets/images/ic_image2.jpg'),
            _itemlist(title: 'picture', image: 'assets/images/ic_image2.jpg'),
            _itemlist(title: 'picture', image: 'assets/images/ic_image2.jpg'),
          ],
        ),
      ),
    );
  }

  // TODO: implement widget
  Widget _itemlist({title, image}) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: 150,
            height: 60,
          ),
          SizedBox(
            height: 10,
          ),
          Text(title),
        ],
      ),
    );
  }
}
