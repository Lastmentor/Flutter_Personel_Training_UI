import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Workout(),
    );
  }
}

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        padding: new EdgeInsets.only(top: 10, bottom: 20),
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(left: 15, top: 40),
            child: new Text("Find a",
                style: new TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFF1E3142).withOpacity(0.6),
                    fontSize: 30)),
          ),
          new Padding(
            padding: new EdgeInsets.only(left: 15),
            child: new Text("Workout Type",
                style: new TextStyle(
                  fontFamily: 'Montserrat',
                  color: Color(0xFF1E3142),
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                )),
          ),
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                      margin: new EdgeInsets.only(left: 15, right: 10, top: 30),
                      height: 220,
                      width: (MediaQuery.of(context).size.width - 50.0) / 2,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20),
                        color: Color(0xFF4C9658),
                      ),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 180,
                            width:
                                (MediaQuery.of(context).size.width - 50.0) / 2,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(20),
                                image: new DecorationImage(
                                    image: new AssetImage('image/image1.png'),
                                    fit: BoxFit.cover)),
                          ),
                          new SizedBox(height: 10),
                          new Text("Treadmill",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                  new Container(
                      margin: new EdgeInsets.only(left: 15, right: 10, top: 20),
                      height: 220,
                      width: (MediaQuery.of(context).size.width - 50.0) / 2,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20),
                        color: Color(0xFF344E73),
                      ),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 180,
                            width:
                                (MediaQuery.of(context).size.width - 50.0) / 2,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(20),
                                image: new DecorationImage(
                                    image: new AssetImage('image/image2.png'),
                                    fit: BoxFit.cover)),
                          ),
                          new SizedBox(height: 10),
                          new Text("Stretching",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                  new Container(
                      margin: new EdgeInsets.only(left: 15, right: 10, top: 20),
                      height: 220,
                      width: (MediaQuery.of(context).size.width - 50.0) / 2,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20),
                        color: Color(0xFF832D5E),
                      ),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 180,
                            width:
                                (MediaQuery.of(context).size.width - 50.0) / 2,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(20),
                                image: new DecorationImage(
                                    image: new AssetImage('image/image5.png'),
                                    fit: BoxFit.cover)),
                          ),
                          new SizedBox(height: 10),
                          new Text("Push Up",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ],
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                      margin: new EdgeInsets.only(right: 15, left: 10, top: 70),
                      height: 220,
                      width: (MediaQuery.of(context).size.width - 50.0) / 2,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20),
                        color: Color(0xFF805C4E),
                      ),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 180,
                            width:
                                (MediaQuery.of(context).size.width - 50.0) / 2,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(20),
                                image: new DecorationImage(
                                    image: new AssetImage('image/image3.png'),
                                    fit: BoxFit.cover)),
                          ),
                          new SizedBox(height: 10),
                          new Text("Meditation",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                  new Container(
                      margin: new EdgeInsets.only(right: 15, left: 10, top: 20),
                      height: 220,
                      width: (MediaQuery.of(context).size.width - 50.0) / 2,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20),
                        color: Color(0xFF07212F),
                      ),
                      child: new Column(
                        children: <Widget>[
                          new InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SelectedWork()));
                            },
                            child: new Hero(
                              tag: new AssetImage('image/image4.png'),
                              child: new Container(
                                height: 180,
                                width:
                                    (MediaQuery.of(context).size.width - 50.0) /
                                        2,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(20),
                                    image: new DecorationImage(
                                        image:
                                            new AssetImage('image/image4.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          new SizedBox(height: 10),
                          new Text("Strength",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                  new Container(
                      margin: new EdgeInsets.only(right: 15, left: 10, top: 20),
                      height: 220,
                      width: (MediaQuery.of(context).size.width - 50.0) / 2,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(20),
                        color: Color(0xFF0085AC),
                      ),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 180,
                            width:
                                (MediaQuery.of(context).size.width - 50.0) / 2,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(20),
                                image: new DecorationImage(
                                    image: new AssetImage('image/image6.png'),
                                    fit: BoxFit.cover)),
                          ),
                          new SizedBox(height: 10),
                          new Text("Legs Steps",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SelectedWork extends StatefulWidget {
  @override
  _SelectedWorkState createState() => _SelectedWorkState();
}

class _SelectedWorkState extends State<SelectedWork> {

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF07212F),
        body: new Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('image/next1.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter)),
          child: new Stack(
            children: <Widget>[
              new ListView(
                children: <Widget>[
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new SizedBox(width: 7),
                      new IconButton(
                          icon: new Icon(
                            Icons.keyboard_backspace,
                            size: 35,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ],
                  ),
                  new SizedBox(height: 60),
                  new Padding(
                      padding: new EdgeInsets.only(left: 20),
                      child: new Text(
                        "Workout Type:",
                        style: new TextStyle(
                            color: Color(0xFFAECEDD),
                            fontSize: 28,
                            fontFamily: 'Montserrat'),
                      )),
                  new SizedBox(height: 5),
                  new Padding(
                      padding: new EdgeInsets.only(left: 20),
                      child: new Text(
                        "Strength Training",
                        style: new TextStyle(
                            color: Color(0xFFCDEEFF),
                            fontSize: 32,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      )),
                  new SizedBox(height: 25),
                  new Padding(
                    padding: new EdgeInsets.only(left: 17, right: 17),
                    child: new Material(
                      borderRadius: new BorderRadius.circular(30),
                      child: new Container(
                        width: 200,
                        padding: new EdgeInsets.all(25),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(30),
                            color: Colors.white),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(
                                  "Tricep Trouble",
                                  style: new TextStyle(
                                      color: Color(0xFF07212F),
                                      fontSize: 26,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                ),
                                new Icon(
                                  Icons.turned_in_not,
                                  color: Color(0xFFFF9710),
                                  size: 33,
                                )
                              ],
                            ),
                            new SizedBox(height: 18),
                            new Text(
                              "Upper Body + Weights",
                              style: new TextStyle(
                                  color: Color(0xFF263D49),
                                  fontSize: 18,
                                  fontFamily: 'Montserrat'),
                            ),
                            new SizedBox(height: 10),
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Beginner",
                                  style: new TextStyle(
                                    color: Color(0xFF263D49),
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                new SizedBox(width: 15),
                                new Icon(Icons.brightness_1,
                                    color: Colors.grey.withOpacity(0.5),
                                    size: 8.5),
                                new SizedBox(width: 15),
                                new Text(
                                  "31 min",
                                  style: new TextStyle(
                                    color: Color(0xFF263D49),
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                            new SizedBox(height: 18),
                            new Row(
                              children: <Widget>[
                                new Container(
                                  height: 60,
                                  width: 60,
                                  decoration: new BoxDecoration(
                                      border: new Border.all(
                                          color: Color(0xFFE4E4E6), width: 4),
                                      borderRadius:
                                      new BorderRadius.circular(30),
                                      image: new DecorationImage(
                                          image: new AssetImage(
                                              'image/image4.png'),
                                          fit: BoxFit.cover)),
                                ),
                                new SizedBox(width: 15),
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Samantha William",
                                      style: new TextStyle(
                                          color: Color(0xFF172F3C),
                                          fontSize: 18,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new SizedBox(height: 5),
                                    new Text(
                                      "Hip Hop",
                                      style: new TextStyle(
                                          color: Colors.grey.withOpacity(0.6),
                                          fontSize: 18,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new InkWell(
                                      onTap: () {
                                        setState(() {
                                          _selectedIndex = 1;
                                        });
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => EndPage(
                                                    heroTag:
                                                    'image/extra2.jpg', targetIndex: _selectedIndex)));
                                      },
                                      child: new Hero(
                                          tag: 'image/extra2.jpg',
                                          child: new Container(
                                            height: 85,
                                            margin:
                                            new EdgeInsets.only(top: 60),
                                            width: (MediaQuery.of(context)
                                                .size
                                                .width -
                                                200.0) /
                                                2,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                              new BorderRadius.circular(20),
                                              image: new DecorationImage(
                                                  image: new AssetImage(
                                                      'image/extra2.jpg'),
                                                  fit: BoxFit.cover),
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new InkWell(
                                      onTap: () {
                                        setState(() {
                                          _selectedIndex = 2;
                                        });
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => EndPage(
                                                    heroTag:
                                                    'image/extra1.jpg', targetIndex: _selectedIndex)));
                                      },
                                      child: new Hero(
                                          tag: 'image/extra1.jpg',
                                          child: new Container(
                                            height: 85,
                                            margin:
                                            new EdgeInsets.only(top: 30),
                                            width: (MediaQuery.of(context)
                                                .size
                                                .width -
                                                200.0) /
                                                2,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                              new BorderRadius.circular(20),
                                              image: new DecorationImage(
                                                  image: new AssetImage(
                                                      'image/extra1.jpg'),
                                                  fit: BoxFit.cover),
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new InkWell(
                                      onTap: () {
                                        setState(() {
                                          _selectedIndex = 3;
                                        });
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => EndPage(
                                                    heroTag:
                                                    'image/image4.png', targetIndex: _selectedIndex)));
                                      },
                                      child: new Hero(
                                          tag: 'image/image4.png',
                                          child: new Container(
                                            height: 85,
                                            width: (MediaQuery.of(context)
                                                .size
                                                .width -
                                                200.0) /
                                                2,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                              new BorderRadius.circular(20),
                                              image: new DecorationImage(
                                                  image: new AssetImage(
                                                      'image/image4.png'),
                                                  fit: BoxFit.cover),
                                            ),
                                          )),
                                    ),
                                    new SizedBox(height: 15),
                                    new Container(
                                      height: 80,
                                      width: 80,
                                      decoration: new BoxDecoration(
                                          border: new Border.all(
                                              color: Color(0xFFFCDBB7),
                                              width: 10),
                                          borderRadius:
                                          new BorderRadius.circular(40),
                                          color: Color(0xFFFF9000)),
                                      child: new Center(
                                        child: new Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(height: 15),
                ],
              )
            ],
          ),
        ));
  }
}


class EndPage extends StatelessWidget {
  final heroTag, targetIndex;

  EndPage({this.heroTag, this.targetIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Hero(
          tag: heroTag,
          child: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage(heroTag),fit: BoxFit.cover),
            ),
            child: new Stack(
              children: <Widget>[
                new ListView(
                  children: <Widget>[
                    new SizedBox(height: 10),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(width: 15),
                        new GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: new Icon(Icons.close, size: 30, color: Colors.white.withOpacity(0.8)),
                        ),
                      ],
                    ),
                    new SizedBox(height: MediaQuery.of(context).size.height - 315),
                    new Container(
                      color: Color(0xFF566672).withOpacity(0.5),
                      child: new Column(
                        children: <Widget>[
                          new SizedBox(height: 10),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Container(
                                height: 1,
                                width: 185,
                                color: Colors.white,
                              ),
                              new Text('1:08', style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 14)),
                              new Icon(Icons.pause, color: Colors.white),
                              new Icon(Icons.play_arrow, color: Colors.white),
                            ],
                          ),
                          new SizedBox(height: 5),
                          new Container(
                            height: 200,
                            width: double.infinity,
                            child: new ListView(
                              scrollDirection: Axis.horizontal,
                              padding: new EdgeInsets.only(left: 15, right: 15),
                              children: <Widget>[
                                new Container(
                                  width: 125,
                                  height: 125,
                                  decoration: new BoxDecoration(
                                      border: targetIndex == 1 ? new Border.all(
                                          color: Colors.white,
                                          width: 2
                                      ) :
                                      null,
                                      borderRadius: new BorderRadius.circular(15),
                                      image: new DecorationImage(
                                          image: new AssetImage('image/extra2.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                  child: new Column(
                                    children: <Widget>[
                                      new SizedBox(height: 10),
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          new SizedBox(width: 8),
                                          new Text('12:30', style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 15))
                                        ],
                                      ),
                                      new SizedBox(height: 140),
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          new SizedBox(width: 8),
                                          new Text('Exercise 1', style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 15))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                new SizedBox(width: 10),
                                new Container(
                                  width: 125,
                                  height: 125,
                                  decoration: new BoxDecoration(
                                      border: targetIndex == 2 ? new Border.all(
                                          color: Colors.white,
                                          width: 2
                                      ) :
                                      null,
                                      borderRadius: new BorderRadius.circular(15),
                                      image: new DecorationImage(
                                          image: new AssetImage('image/extra1.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                  child: new Column(
                                    children: <Widget>[
                                      new SizedBox(height: 10),
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          new SizedBox(width: 8),
                                          new Text('12:30', style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 15))
                                        ],
                                      ),
                                      new SizedBox(height: 140),
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          new SizedBox(width: 8),
                                          new Text('Exercise 2', style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 15))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                new SizedBox(width: 10),
                                new Container(
                                  width: 125,
                                  height: 125,
                                  decoration: new BoxDecoration(
                                      border: targetIndex == 3 ? new Border.all(
                                          color: Colors.white,
                                          width: 2
                                      ) :
                                      null,
                                      borderRadius: new BorderRadius.circular(15),
                                      image: new DecorationImage(
                                          image: new AssetImage('image/image4.png'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                  child: new Column(
                                    children: <Widget>[
                                      new SizedBox(height: 10),
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          new SizedBox(width: 8),
                                          new Text('12:30', style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 15))
                                        ],
                                      ),
                                      new SizedBox(height: 140),
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          new SizedBox(width: 8),
                                          new Text('Exercise 3', style: new TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 15))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new SizedBox(height: 10.5),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
      )
    );
  }
}
