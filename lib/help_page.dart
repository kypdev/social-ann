import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.grey[200],
              ),
              Column(
                children: <Widget>[
                  appbars(h_nav: MediaQuery.of(context).size.height / 10),
                  helpMenu(
                    helpImage: 'https://i.pravatar.cc/',
                    helpTitle: 'Help Title 1',
                  ),
                  helpMenu(
                    helpImage: 'https://i.pravatar.cc/',
                    helpTitle: 'Help Title 2',
                  ),
                  helpMenu(
                    helpImage: 'https://i.pravatar.cc/',
                    helpTitle: 'Help Title 3',
                  ),
                  helpMenu(
                    helpImage: 'https://i.pravatar.cc/',
                    helpTitle: 'Help Title 4',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget appbars({
  h_nav,
}) {
  return Container(
    height: h_nav,
    color: Colors.lightGreenAccent,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: <Widget>[
          Text(
            'ช่วยเหลือ',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget helpMenu({
  helpImage,
  helpTitle,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 5.0,
    ),
    child: Card(
      child: Container(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    helpImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              helpTitle,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
