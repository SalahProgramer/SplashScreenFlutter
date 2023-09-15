import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:splashscreen/ss.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 7)).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (context) => dd() ,));

    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/blue.jpg"),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image(image: AssetImage("images/result (10).png")
                    ,width: 300),
                SizedBox(height: 30,),
                SpinKitThreeBounce(
                  color: Colors.blueAccent,
                  size: 50.0,
                ),





              ],
            ),
          ),





      ),
    );

  }
}



