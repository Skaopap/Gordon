import 'package:flutter/material.dart';
import 'package:gordon/models/MListeCourse.dart';
import 'package:gordon/screens/listescourseInfo.dart';
import 'package:gordon/screens/repasInfos.dart';
import 'package:gordon/theme/colors.dart';
import 'package:gordon/root.dart';
import 'package:gordon/models/MRepas.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MRepas()),
        ChangeNotifierProvider(create: (context) => MListeCourse()),
      ],
  child : MyApp())
    
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gordon',
      theme: ThemeData(
            primaryColor: LightGrey,
            //accentColor: accentColor,
            textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              
            ),
          ),
          debugShowCheckedModeBanner: false,
      home: Root(),
      routes: {
        Root.routeName: (ctx) => Root(),
        RepasInfos.routeName : (ctx) => RepasInfos(),
        ListeCourseInfos.routeName : (ctx) => ListeCourseInfos(),
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
