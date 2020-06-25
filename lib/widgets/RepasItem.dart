import 'package:flutter/material.dart';
import 'package:gordon/screens/repasInfos.dart';
import 'package:gordon/theme/colors.dart';
import 'package:gordon/widgets/NewRepas.dart';
import 'package:provider/provider.dart';
import 'package:gordon/models/MRepas.dart';
import 'package:gordon/models/MRepasItem.dart';

class RepasItem extends StatelessWidget {
  const RepasItem({Key key}) : super(key: key);

  void _addNewRepas()
  {

  }

  void _startAddNewRepas(BuildContext ctx)
  {
      showModalBottomSheet(isScrollControlled: true, isDismissible: true,backgroundColor: Colors.white.withOpacity(0), context: ctx, builder: (_) {
        return NewRepas(_addNewRepas);
      });
  }

  @override
  Widget build(BuildContext context) 
  {
    final item = Provider.of<MRepasItem>(context);

    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () {
        Navigator.of(context).pushNamed(RepasInfos.routeName,
            arguments: item.id);
      },
      child: Card(
        color: Colors.white,
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListTile(
            leading: 
              Container(
                width: 60.0,
                height: 160.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                            item.imageUrl)
                    )
                )
              ),
            trailing: 
              Container(
                child : Column(children: <Widget>[
                  //Icon(Icons.access_time, size: 15 ,),
                  //Text("20 min", style : TextStyle(color: DarkGrey),),
                  //SizedBox(height: 15),
                  IconButton(icon : Icon(Icons.add) , onPressed: () => _startAddNewRepas(context),),   
                ],)
              ),
            title: Text(
              item.name,
              //textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),

          )
        ),
      ),
    );
  }
}