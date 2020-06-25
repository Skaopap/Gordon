import 'package:flutter/material.dart';
import 'package:gordon/screens/listescourseInfo.dart';
import 'package:gordon/theme/colors.dart';
import 'package:provider/provider.dart';
import 'package:gordon/models/MListeCourseItem.dart';

class ListeCourseItem extends StatelessWidget {
  const ListeCourseItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    final item = Provider.of<MListeCourseItem>(context);

    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () {
        Navigator.of(context).pushNamed(ListeCourseInfos.routeName,
            arguments: item.id);
      },
      child: Card(
        color: White,
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        borderOnForeground: true,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: ListTile(
              title: Text(
                "Liste du "+item.beginDate+" au "+item.endDate,
                //textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              subtitle: Text(
                "Générée le : "+item.generateDate,
                //textAlign: TextAlign.center,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              trailing:
              Container(
                  child: IconButton(icon : Icon(Icons.delete, color: DarkGrey, size: 50,), onPressed: (){},),

              ),

              // subtitle: Text(item.status,
              //     style: TextStyle(fontStyle: FontStyle.italic)),
            )
        ),
      ),
    );
  }
}