import 'package:flutter/material.dart';
import 'package:gordon/models/MRepas.dart';
import 'package:provider/provider.dart';
import 'package:gordon/widgets/RepasItem.dart';

class ListRepas extends StatefulWidget {
  ListRepas({Key key}) : super(key: key);

  @override
  _ListRepasState createState() => _ListRepasState();
}

class _ListRepasState extends State<ListRepas> {
  @override
  Widget build(BuildContext context) {
    final repasData = Provider.of<MRepas>(context);
    return ListView.builder(
            itemCount: repasData.listRepas.length,
            itemBuilder: (ctx ,index) {
              return ChangeNotifierProvider.value(
                value: repasData.listRepas[index],
                child: RepasItem()
              );
            },
      );
  }
}
