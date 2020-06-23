import 'package:flutter/material.dart';
import 'package:gordon/theme/colors.dart';
import 'package:gordon/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gordon',
      theme: ThemeData(
            primaryColor: primaryColor,
            accentColor: accentColor,
            textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              
            ),
          ),
          debugShowCheckedModeBanner: false,
      home: Root(),
      routes: {
        Root.routeName: (ctx) => Root(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Root(),
    );
  }
}
