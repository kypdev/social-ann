import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey[200],
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                'https://m.media-amazon.com/images/M/MV5BMTQwMDQ0NDk1OV5BMl5BanBnXkFtZTcwNDcxOTExNg@@._V1_SY1000_CR0,0,688,1000_AL_.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'หน้าแรก',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.search),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('ตั้งคำถาม หรือแชร์'),
                            Text('ประสบการณ์'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.image),
                            SizedBox(
                              width: 10,
                            ),
                            Text('รูปภาพ')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
//              Card(
//                child: Container(
//                  width: MediaQuery.of(context).size.width,
//                  padding: EdgeInsets.only(
//                      top: 10, bottom: 10, left: 20.0, right: 20.0),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        children: <Widget>[
//                          Text(
//                            'Title',
//                            style: TextStyle(
//                              fontWeight: FontWeight.bold,
//                              fontSize: 20.0,
//                            ),
//                          ),
//                        ],
//                      ),
//                      RichText(
//                        text: TextSpan(
//                          text: 'Hello ',
//                          style: DefaultTextStyle.of(context).style,
//                          children: <TextSpan>[
//                            TextSpan(
//                                text: 'bold',
//                                style: TextStyle(fontWeight: FontWeight.bold)),
//                            TextSpan(
//                                text:
//                                    ' world!asdfssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
                makeFeed(
                    userImage:
                        'https://image.businessinsider.com/5cd10a1c021b4c656431c473?width=1300&format=jpeg&auto=webp',
                    userName: 'Karen Gillan',
                    timeText: '1 hr ago',
                    feedText:
                        'The world\'s still the same. There\'s just less in it.',
                    feedImage:
                        'https://images.unsplash.com/photo-1577353716826-9151912dcdd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80'),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _FeedPageState && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}

Widget makeFeed({
  userImage,
  userName,
  timeText,
  feedText,
  feedImage,
}) {
  return Card(
    child: Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
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
                    width: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        timeText,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
                onPressed: () {
                  print('editpost');
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(feedImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  makeLove(),
                  SizedBox(width: 8.0,),
                  Text(
                    '1 คนถูกใจ',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text('คอมเมนต์',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          SizedBox(height: 20,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Stack(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,

                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.favorite,
                    color: Colors.red,),
                  ),

                ],
              ),

              SizedBox(width: 12.0,),

              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'แสดงความคิดเห็น',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),

            ],
          ),

          SizedBox(height: 20.0,),


        ],
      ),
    ),
  );
}

Widget makeLike() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)),
    child: Center(
      child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
    ),
  );
}

Widget makeLove() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)),
    child: Center(
      child: Icon(Icons.favorite, size: 12, color: Colors.white),
    ),
  );
}
