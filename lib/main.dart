import 'package:MINTO/bottom_row.dart';
import 'package:MINTO/food.dart';
import 'package:MINTO/login_page.dart';
import 'package:MINTO/scroll_body.dart';
import 'package:MINTO/top_row.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo1.png",
            height: 220,
            width: 200,
          ),SizedBox(
            height:10,
          ),
          Text(
            "MINTO",
            style: TextStyle(
                fontSize: 50,
                fontStyle: FontStyle.italic,
                color: Colors.amber[600],
                fontWeight: FontWeight.bold),
          ),
          SpinKitFadingCircle(
            color: Colors.amber[600],
          )
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: const LoginPage(),
      splashTransition: SplashTransition.sizeTransition,
      splashIconSize: 350,
      duration: 4000,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBody(),
    );
  }
}

class GetBody extends StatefulWidget {
  const GetBody({Key? key}) : super(key: key);

  @override
  State<GetBody> createState() => _GetBodyState();
}

class _GetBodyState extends State<GetBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                image: DecorationImage(
                    image: AssetImage("assets/images/image.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                      height: 100,
                    ),
                    Icon(
                      Icons.dashboard_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    SizedBox(
                      width: 260,
                    ),
                    Container(
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 22.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person.png'),
                          radius: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "MINTO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 60),
                ),
                SizedBox(
                  width: 24,
                ),
                Text(
                  "Book Your Seat",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ],
            ),
            // child: Image.asset("assets/images/image1.png",fit: BoxFit.cover,),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 20,
          ),
          Text("Tables",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 22)),
        ]),
        SizedBox(
          height: 10,
        ),
        TopRow(),
        SizedBox(
          height: 10,
        ),
        BottomRow(),
      ],
    );
  }
}
