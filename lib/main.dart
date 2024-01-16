import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text('Rich Text Example',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),

            ),
          ),
          body: Center (
             child : RichText(
            // ignore: prefer_const_constructors
            text: TextSpan(
              children: [
                 const TextSpan(
                  text: '\n\n Single ',
                      style:TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                 ),
                const TextSpan(
                  text: ' Line ',
                  style: TextStyle(
                    backgroundColor: Colors.teal,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                const TextSpan(
                  text: ' Multiple',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 22,
                    // fontWeight: FontWeight.bold,
                    letterSpacing: 6,
                    fontFamily: 'RobotoMono',

                  ),
                ),
                const TextSpan(
                  text: ' Styles',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,


                  ),
                ),
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}
