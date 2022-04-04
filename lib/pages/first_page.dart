import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static final String id = 'first_page';

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late PageController _pageController;
  int _selectedPage=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter course'),
      ),
      body: PageView(
        controller:_pageController ,
        onPageChanged: (int index){
          setState(() {
            _selectedPage=index;
          });
        },
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'business'),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.yellow,
          onTap: (int index){
          setState(() {
            _selectedPage=index;
            _pageController.animateToPage(index, duration: Duration(microseconds: 200), curve: Curves.easeIn);
          });
          },
      ),
    );
  }
}
