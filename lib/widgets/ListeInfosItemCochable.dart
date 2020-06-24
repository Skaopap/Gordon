import 'package:flutter/material.dart';
import 'package:gordon/screens/listescourseInfo.dart';
import 'package:gordon/theme/colors.dart';
import 'package:provider/provider.dart';
import 'package:gordon/models/MListeCourse.dart';
import 'package:gordon/models/MListeCourseItem.dart';

class ListeInfosItemCochable extends StatefulWidget {
  const ListeInfosItemCochable({this.Ingredient});


  final String Ingredient;

  @override
  _ListeInfosItemCochableState createState() => _ListeInfosItemCochableState();
}

class _ListeInfosItemCochableState extends State<ListeInfosItemCochable> {

  bool State=false;

  void _handleTap() {
    setState(() {
      State = !State;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return
      Card(
        color: White,
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        borderOnForeground: true,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: ListTile(
                title: Text(
                  widget.Ingredient,
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                trailing:
                IconButton(icon: State?Icon(Icons.check,color: Colors.green,):Icon(Icons.close,color: Colors.red,), onPressed: (){_handleTap();})
              // subtitle: Text(item.status,
              //     style: TextStyle(fontStyle: FontStyle.italic)),
            )
        ),
      );
  }
}
