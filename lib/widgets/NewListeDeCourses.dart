import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:gordon/theme/colors.dart';


class NewListeDeCourses extends StatefulWidget {
  NewListeDeCourses();

  //final Function addHandler;

  @override
  _NewListeDeCoursesState createState() => _NewListeDeCoursesState();
}

class _NewListeDeCoursesState extends State<NewListeDeCourses> {

  DateTime _selectedDate;
  DateTime _selectedDateEnd;

  final amountController = TextEditingController();

  void _submitData() {
    // check data here

    Navigator.of(context).pop();
  }

  void _presentDatePickerBegin() {
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

  void _presentDatePickerEnd() {
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
        _selectedDateEnd = pickedData;
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
            Text ("Générer Liste !", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20), textAlign: TextAlign.center,),
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(_selectedDate == null
                        ? 'Pas de date de début choisie !'
                        : 'Date de début choisie : ${DateFormat.yMd().format(_selectedDate)}',
                        style: TextStyle(color: Colors.black),),
                        
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text(
                      'Choisir Date Début',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,),
                    ),
                    onPressed: _presentDatePickerBegin,
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(_selectedDateEnd == null
                        ? 'Pas de date de fin choisie !'
                        : 'Date de fin choisie : ${DateFormat.yMd().format(_selectedDateEnd)}',
                        style: TextStyle(color: Colors.black),),
                        
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text(
                      'Choisir fin Début',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,),
                    ),
                    onPressed: _presentDatePickerEnd,
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
              width: 150,
              child: Card(
                  
                  color: Pink,
                  elevation: 8,
                  //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Text("Générer" , style: TextStyle(color: White, fontWeight: FontWeight.bold, fontSize: 25), textAlign: TextAlign.center,
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