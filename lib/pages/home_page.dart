

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Flutter course') ,

      ),
      body: Center(
        child: Text('HomePage'),
      ),
      drawer: Drawer(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Container(
              padding: EdgeInsets.all(23),
               height: 200,
               color: Colors.deepPurpleAccent,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('User Name',style:TextStyle(color: Colors.white,fontSize: 20),),
                   Text('username@gmail.com',style: TextStyle(color: Colors.white,fontSize: 20),)
                 ],
               ),
             ),
           ],
         ),
      ),
    );



  }
}
