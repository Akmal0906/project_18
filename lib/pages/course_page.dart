import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  static final String id = 'course_page';

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            _itemImage(
                title: 'hello world', image: 'assets/images/ic_image1.jpg'),
            _itemImage(
                title: 'hello world', image: 'assets/images/ic_image1.jpg'),
            _itemImage(
                title: 'hello world', image: 'assets/images/ic_image1.jpg'),
            _itemImage(
                title: 'hello world', image: 'assets/images/ic_image1.jpg'),
            _itemImage(
                title: 'hello world', image: 'assets/images/ic_image1.jpg'),
            _itemImage(
                title: 'hello world', image: 'assets/images/ic_image1.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _itemImage({title, image}) {
    return Container(
      color: Colors.deepPurple,
      child: Column(
        children: [
          Image(
            width: 70,
            height: 100,
            image: AssetImage(image),
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
