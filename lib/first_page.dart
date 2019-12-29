import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    //double height_appbar = MediaQuery.of(context).size.height/8;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            appBars(
              height_appbar: MediaQuery.of(context).size.height / 8,
              userImage: 'https://i.pravatar.cc/600',
              userName: 'Demo',
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  friendTitle(),

                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                  friendsList(
                    friendImage: 'https://i.pravatar.cc/600',
                    friendName: 'Demo Friend',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget appBars({height_appbar, userImage, userName}) {
  return Container(
    height: height_appbar,
    color: Colors.greenAccent,
    child: Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 20,
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 20.0),
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  userImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            userName,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget friendTitle (){
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 20.0,),
    child: Text(
      'เพื่อน (20)',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    ),
  );
}

Widget friendsList({friendImage, friendName}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, left: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[


        SizedBox(
          height: 20.0,
        ),

        Row(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    friendImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20.0,),
            Text(
              friendName,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
