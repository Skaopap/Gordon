import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:gordon/theme/colors.dart';


class NewRepas extends StatefulWidget {
  NewRepas(this.addHandler);

  final Function addHandler;

  @override
  _NewRepasState createState() => _NewRepasState();
}

class _NewRepasState extends State<NewRepas> {

  DateTime _selectedDate;
  final amountController = TextEditingController();

  void _submitData() {
    /*if(amountController.text.isEmpty)
    {
      return;
    }

    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0 || _selectedDate == null) {
      return;
    }

    widget.newTransactionHandler(enteredTitle, enteredAmount, _selectedDate);*/

    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickedData) {
      if (pickedData == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedData;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Card(
      color: White,
      elevation: 8,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
      child: Padding(
        padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 100),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text ("Ajout Repas !", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20), textAlign: TextAlign.center,),
            TextField(
              decoration: InputDecoration(labelText: 'Nombre De Personne'),
              controller: amountController,
              keyboardType: TextInputType.number,
              //onSubmitted: (_) => _submitData(),
            ),
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(_selectedDate == null
                        ? 'Pas de date choisie !'
                        : 'Date choisie : ${DateFormat.yMd().format(_selectedDate)}',
                        style: TextStyle(color: Colors.black),),
                        
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text(
                      'Choisir Date',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,),
                    ),
                    onPressed: _presentDatePicker,
                  ),
                ],
              ),
            ),
            InkWell(
                
                splashColor: Theme.of(context).accentColor,
                onTap: () {
                    _submitData();
                      },
                child: 
                Container(
                  
              height: 50,
              //width: 200,
              child: Card(
                  
                  color: Pink,
                  elevation: 8,
                  //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Text("Ajouter Repas" , style: TextStyle(color: White, fontWeight: FontWeight.bold, fontSize: 25), textAlign: TextAlign.center,
                  ),
                ),
                ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}