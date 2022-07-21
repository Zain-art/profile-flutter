import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  Scaffold(
          // appBar: AppBar(
          //   // Here we take the value from the MyHomePage object that was created by
          //   // the App.build method, and use it to set our appbar title.
          //   title: Text('proflie'),
          // ),
          body: Stack(
            children: [
              ClipPath(
                child: Container(color: Colors.black.withOpacity(0.8)),
                clipper: getClipper(),
              ),
              Positioned(
                width: 400.0,
                height: 1000,
                top: MediaQuery.of(context).size.height / 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage('images/zain.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 7.0),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Zain Khan',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'san sarif',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'subscribe profile my',
                      style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'san sarif',
                      ),
                    ),
                    SizedBox(height: 15.0),
                    // Container(
                    //   height: 30.0,
                    //   width: 95.0,
                    //   child: Material(
                    //     borderRadius: BorderRadius.circular(20.0),
                    //     shadowColor: Colors.greenAccent,
                    //     color: Colors.green,
                    //     elevation: 7.0,
                    //     child: GestureDetector(
                    //       onTap: () {},
                    //       child: Center(
                    //         child: Text(
                    //           'edit name',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(height: 25.0),
                    // Container(
                    //   height: 30.0,
                    //   width: 95.0,
                    //   child: Material(
                    //     borderRadius: BorderRadius.circular(20.0),
                    //     shadowColor: Colors.greenAccent,
                    //     color: Colors.amberAccent,
                    //     elevation: 7.0,
                    //     child: GestureDetector(
                    //       onTap: () {},
                    //       child: Center(
                    //         child: Text(
                    //           'Log Out',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 140,
                            height: 40,
                            // margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 10),

                            decoration: BoxDecoration(
                              //color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              '3D Animation',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            // color: Colors.grey,
                          ),
                          Container(
                            width: 130,
                            height: 40,
                            // margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 10),

                            decoration: BoxDecoration(
                              //color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'Movies Hit',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            // color: Colors.grey,
                          ),
                          // borderRadius: BorderRadius.circular(50),

                          // borderRadius: BorderRadius.circular(25),
                          // color: Colors.grey,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 40,
                            // margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 10),

                            decoration: BoxDecoration(
                              //color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'Low Plooy',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            // color: Colors.grey,
                          ),
                          Container(
                            width: 110,
                            height: 40,
                            margin: EdgeInsets.all(10),
                            // margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 10),

                            decoration: BoxDecoration(
                              //color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'Crowbar',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            // color: Colors.grey,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Flexible(
                            child: Container(
                              width: 100,
                              height: 40,
                              // margin: EdgeInsets.all(10),
                              padding: EdgeInsets.only(top: 10),

                              decoration: BoxDecoration(
                                //color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                ' KONG',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // color: Colors.grey,
                            ),
                          ),

                          // Center(
                          //   child: Row(
                          //       children: <Widget>[
                          //         Container(
                          //           child: ListTile(
                          //             title: Text('1445'),
                          //             subtitle: Text('subtitle'),
                          //
                          //           ),
                          //
                          //         )
                          //       ]
                          //   ),
                          // ),
                          // borderRadius: BorderRadius.circular(50),

                          // borderRadius: BorderRadius.circular(25),
                          // color: Colors.grey,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text(
                                '1244 \n followers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),

                              ),

                            ),
                            Container(
                              child: Text(
                                '1244 \n followers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '1244 \n followers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('login'),
                      icon: const Icon(Icons.login),

                    ), SizedBox(
                      height: 50,
                    ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        );


    //is trailing comma makes auto-formatting nicer for build methods.
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
