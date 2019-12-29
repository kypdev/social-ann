import 'package:flutter/material.dart';

import 'package:social_app/media_page.dart';
import 'package:social_app/notification_page.dart';
import 'package:social_app/profile_page.dart';

import 'feed_page.dart';
import 'first_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  final _pageOption = [

    FirstPage(),
    ProfilePage(),
    FeedPage(),
    MediaPage(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageOption[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItem,
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('หน้าหลัก'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            title: Text('แชท'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('ไทม์ไลน์'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('ช่วยเหลือ'),
          ),

        ],
      ),
    );
  }
}

//Widget homePage() {
//  return Stack(
//    children: <Widget>[
//      Container(
//        //color: Colors.grey[200],
//      ),
//      Column(
//        children: <Widget>[
//          //navBar(),
//        ],
//      )
//    ],
//  );
//}

//Widget navBar() {
//  return AppBar(
//    backgroundColor: Colors.white,
//    title: Row(
//      mainAxisAlignment: MainAxisAlignment.start,
//      children: <Widget>[
//        Container(
//          decoration: BoxDecoration(
//            shape: BoxShape.circle,
//            image: DecorationImage(
//              image: NetworkImage(
//                'https://unsplash.com/photos/a5sRFieA3BY'
//              ),
//              fit: BoxFit.cover,
//            )
//          ),
//        ),
//      ],
//    ),
//  ) ;


//    Container(
//    padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
//    decoration: BoxDecoration(
////      boxShadow: [
////        BoxShadow(
////          color: Colors.black,
////          blurRadius: 10.0,
////        ),
//        //  ],
//        ),
//    child: Row(
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      children: <Widget>[
//        Container(
//          width: 50.0,
//          height: 50.0,
//          decoration: BoxDecoration(
//            shape: BoxShape.circle,
//            image: DecorationImage(
//              image: NetworkImage(
//                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/jumanji-the-next-level-9-1561988547.jpg?resize=980:*'),
//              fit: BoxFit.cover,
//            ),
//          ),
//        ),
//        Icon(Icons.search),
//      ],
//    ),
//  );
//}
