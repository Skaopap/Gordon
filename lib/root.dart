import 'package:flutter/material.dart';
import 'package:gordon/screens/calendrier.dart';
import 'package:gordon/screens/repas.dart';
import 'package:gordon/screens/listescourse.dart';
import 'package:gordon/theme/colors.dart';
//

class Root extends StatefulWidget {
  static const routeName = "/root";
  Root({Key key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}


class _RootState extends State<Root> {

  List<Map<String, dynamic>> _pages;
  int _selectedPageIndex = 1;

  @override
  void initState() {
     _pages = [
       {
        'page':Repas(),
        'title':'Repas',
      },
      {
        'page':Calendrier(),
        'title':'Calendrier',
      },
      {
        'page':ListesCourse(),
        'title':'ListesCourse',
      }
    ];
    
    super.initState();
  }

  void _selectPage(int index) {

    setState(() {
      _selectedPageIndex = index;
    });

  }

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
            appBar: AppBar(
              leading: Image.asset("assets/images/gordonHead.png"),
              backgroundColor: Pink,
              title: const Text("Gordon", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              centerTitle: true,
              actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              
            },
          ),]
            ) ,
            bottomNavigationBar: 
              BottomNavigationBar(
                onTap: _selectPage,
                unselectedItemColor: Salmon,
                selectedItemColor: Colors.white,
                backgroundColor: Pink,
                currentIndex: _selectedPageIndex,
                items: [
                  BottomNavigationBarItem(title: Text("Repas"),icon: Icon(Icons.restaurant_menu)),
                  BottomNavigationBarItem(title: Text("Calendrier"),icon: Icon(Icons.event_note)),
                  BottomNavigationBarItem(title: Text("Listes de Course"),icon: Icon(Icons.toc)),
                ],
              ),
            //backgroundColor: Theme.of(context).primaryColor,
            body: _pages[_selectedPageIndex]["page"]
          );
  }
}