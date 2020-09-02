import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 20),
        children: <Widget>[
          Text("Find a", style: TextStyle(fontSize: 30, color: Color(0xFF1E3242).withOpacity(0.6))),
          Text("Workout Type", style: TextStyle(fontSize: 34, color: Color(0xFF1E3242), fontWeight: FontWeight.bold)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _container(0.0, 30.0, 10.0, Color(0xFF4C9658), "Treadmill", "image/image1.png"),
                  _container(0.0, 20.0, 10.0, Color(0xFF344E73), "Stretching", "image/image2.png"),
                  _container(0.0, 20.0, 10.0, Color(0xFF832D5E), "Push Up", "image/image5.png"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _container(10.0, 70.0, 0.0, Color(0xFF805C4E), "Meditation", "image/image3.png"),
                  _container(10.0, 20.0, 0.0, Color(0xFF07212F), "Strength", "image/image4.png"),
                  _container(10.0, 20.0, 0.0, Color(0xFF0085AC), "Legs Steps", "image/image6.png"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _container(left, top, right, color, text, image){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SelectedWork()
        ));
      },
      child: Container(
        margin: EdgeInsets.only(left: left, right: right, top: top),
        height: 250,
        width: (MediaQuery.of(context).size.width - 50) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 210,
              width: (MediaQuery.of(context).size.width - 50) / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 10),
            Text(text, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}

class SelectedWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF07212F),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/next1.png"),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter
          )
        ),
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(Icons.keyboard_backspace),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 60),
                  child: Text("Workout Type:", style: TextStyle(color: Color(0xFFAECEDD), fontSize: 30),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Strength Training", style: TextStyle(color: Color(0xFFCDEEFF), fontSize: 35, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Tricep Trouble", style: TextStyle(fontSize: 26, color: Color(0xFF07212F), fontWeight: FontWeight.bold),),
                              Icon(Icons.turned_in_not, size: 33, color: Color(0xFFFF9710),)
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Upper Body + Weights", style: TextStyle(fontSize: 18, color: Color(0xFF263D49))),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Text("Beginner", style: TextStyle(fontSize: 18, color: Color(0xFF263D44)),),
                              SizedBox(width: 15),
                              Icon(Icons.brightness_1, size: 8.5, color: Colors.grey.withOpacity(0.5),),
                              SizedBox(width: 18),
                              Text("31 min", style: TextStyle(fontSize: 18, color: Color(0xFF263D44)),),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFE4E4E6),
                                    width: 4
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage("image/image4.png"),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Samantha William", style: TextStyle(fontSize: 18, color: Color(0xFF172F3C), fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  Text("Hip Hop", style: TextStyle(fontSize: 18, color: Colors.grey.withOpacity(0.5)),),
                                ],
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => EndPage(
                                          heroTag: 'image/extra2.jpg'
                                        )
                                      ));
                                    },
                                    child: Hero(
                                      tag: 'image/extra2.jpg',
                                      child: Container(
                                        height: 100,
                                        width: (MediaQuery.of(context).size.width - 225) / 2,
                                        margin: EdgeInsets.only(top: 60),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage("image/extra2.jpg"),
                                            fit: BoxFit.cover
                                          )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => EndPage(
                                              heroTag: 'image/extra1.jpg'
                                          )
                                      ));
                                    },
                                    child: Hero(
                                      tag: 'image/extra1.jpg',
                                      child: Container(
                                        height: 100,
                                        width: (MediaQuery.of(context).size.width - 225) / 2,
                                        margin: EdgeInsets.only(top: 30),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: AssetImage("image/extra1.jpg"),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => EndPage(
                                              heroTag: 'image/image4.png'
                                          )
                                      ));
                                    },
                                    child: Hero(
                                      tag: 'image/image4.png',
                                      child: Container(
                                        height: 100,
                                        width: (MediaQuery.of(context).size.width - 225) / 2,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: AssetImage("image/image4.png"),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 10,
                                        color: Color(0xFFFCDBB7)
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                      color: Color(0xFFFF9000)
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EndPage extends StatelessWidget {

  final heroTag;

  EndPage({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: heroTag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(heroTag),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 25,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close, size: 30, color: Colors.white.withOpacity(0.8),),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 315,
            child: Container(
              color: Color(0xFF566672).withOpacity(0.5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 1,
                        width: 185,
                        color: Colors.white,
                      ),
                      Text("1:08", style: TextStyle(fontSize: 14, color: Colors.white),),
                      Icon(Icons.pause, color: Colors.white),
                      Icon(Icons.play_arrow, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 25, right: 15),
                      children: <Widget>[
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2
                            ),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("image/extra2.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("12:30", style: TextStyle(fontSize: 15, color: Colors.white),),
                              ),
                              SizedBox(height: 190),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("Exercise 1", style: TextStyle(fontSize: 15, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("image/extra1.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("12:30", style: TextStyle(fontSize: 15, color: Colors.white),),
                              ),
                              SizedBox(height: 190),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("Exercise 2", style: TextStyle(fontSize: 15, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("image/image4.png"),
                                  fit: BoxFit.cover
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("12:30", style: TextStyle(fontSize: 15, color: Colors.white),),
                              ),
                              SizedBox(height: 190),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("Exercise 3", style: TextStyle(fontSize: 15, color: Colors.white),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



