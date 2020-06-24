import 'package:flutter/material.dart';
import 'package:gordon/screens/repasInfos.dart';
import 'package:provider/provider.dart';
import 'package:gordon/models/MRepas.dart';
import 'package:gordon/models/MRepasItem.dart';

class RepasItem extends StatelessWidget {
  const RepasItem({Key key}) : super(key: key);

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
        color: Theme.of(context).primaryColor,
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
                decoration: 
                  BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                height: 50,
                width: 50,
                child: Icon(Icons.chevron_right, color: Colors.white,)
              ),
            title: Text(
              item.name,
              //textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
            // subtitle: Text(item.status,
            //     style: TextStyle(fontStyle: FontStyle.italic)),
          )
        ),
      ),
    );
  }
}