import 'package:flutter/material.dart';
import 'package:gordon/models/MCalendrier.dart';
import 'package:provider/provider.dart';
import 'package:gordon/widgets/CalendrierItem.dart';
import 'package:gordon/theme/colors.dart';

class ListCalendrier extends StatefulWidget {
  ListCalendrier({Key key}) : super(key: key);

  @override
  _ListCalendrierState createState() => _ListCalendrierState();
}

class _ListCalendrierState extends State<ListCalendrier> {
  @override
  Widget build(BuildContext context) {
    final CalendrierData = Provider.of<MCalendrier>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon : Icon(Icons.chevron_left) , onPressed: () {}, color: Colors.white,),
        title: Text(  "Du 16 au 23 juin", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon : Icon(Icons.chevron_right) , onPressed: () {}, color: Colors.white,),
        ],
        backgroundColor: Salmon,
      ) ,
      backgroundColor: LightGrey,

      body: SafeArea(
        child: ListView.builder(
          itemCount: CalendrierData.listItems.length,
          itemBuilder: (ctx ,index) {
            return ChangeNotifierProvider.value(
                value: CalendrierData.listItems[index],
                child: CalendrierItem()
            );
          },
        ),
      ),
    );
  }
}