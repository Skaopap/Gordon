import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gordon/theme/colors.dart';
import 'package:provider/provider.dart';
import 'package:gordon/models/MCalendrierItem.dart';

class CalendrierItem extends StatelessWidget {
  const CalendrierItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    final item = Provider.of<MCalendrierItem>(context);

    return InkWell(
      splashColor: Theme.of(context).accentColor,
        child: Container(
          // height: 135, Doesn't seem to give enough space to "MERCREDI" to display correctly
          child: Card(
            color: White,
            elevation: 8,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: RotatedBox(
                    quarterTurns: 3,
                    child: FittedBox( //Permits MERCREDI to fit in its textArea
                      fit: BoxFit.contain,
                      child: Text(
                        item.day,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                      ),
                    ),
                  ),
                  title: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: "Petit Déj : ",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: item.breakfast,
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "\nDéjeuner : ",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: item.lunch,
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "\nDîner : ",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: item.dinner,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
          ),
        ),
      ),
    );
  }
}