import 'package:flutter/material.dart';
import 'package:toku/screens/family_members_page.dart';

import '../components/category_item.dart';
import 'numbers_page.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e7),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Toku',
        ),
      ),
      body: Column(
        children: [
          Category(
              text: 'Numbers' ,
              color: Colors.orange ,
            onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return NumbersPage();
                    }));
            },
          ),
          Category(
             text: 'Family Numbers',
             color:Colors.green,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return FamilyMembersPage();
                  }));
            },
         ),
          Category(text:'Colors',
              color: Colors.deepPurple,
            onTap: (){},
          ),
          Category(
            text: 'Phrases',
            onTap: (){},
              color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}

