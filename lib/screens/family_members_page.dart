import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

import '../components/list_item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<Item> familyMembers =const[
    Item(
      sound: 'assets/sounds/family_members/daughter.wav',
      image:'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'daughter',
    ),
    Item(
      sound: 'assets/sounds/family_members/father.wav',
      image:'assets/images/family_members/family_father.png',
      jpName: 'fu',
      enName: 'father',
    ),
    Item(
      sound: 'assets/sounds/family_members/grand father.wav',
      image:'assets/images/family_members/family_grandfather.png',
      jpName: 'sofu',
      enName: 'grandfather',
    ),
    Item(
      sound: 'assets/sounds/family_members/grand mother.wav',
      image:'assets/images/family_members/family_grandmother.png',
      jpName: 'sobo',
      enName: 'grandmothe',
    ),
    Item(
      sound: 'assets/sounds/family_members/mother.wav',
      image:'assets/images/family_members/family_mother.png',
      jpName: 'haha',
      enName: 'mother',
    ),
    Item(
      sound:'assets/sounds/family_members/older bother.wav' ,
      image:'assets/images/family_members/family_older_brother.png',
      jpName: 'ani',
      enName: 'older_brother',
    ),
    Item(
      sound: 'assets/sounds/family_members/older sister.wav',
      image:'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'older_siste',
    ),
    Item(
      sound: 'assets/sounds/family_members/son.wav',
      image:'assets/images/family_members/family_son.png',
      jpName: 'ikiko',
      enName: 'son',
    ),
    Item(
      sound: 'assets/sounds/family_members/younger brohter.wav',
      image:'assets/images/family_members/family_younger_brother.png',
      jpName: 'ototo',
      enName: 'younger_brother',
    ),
    Item(
      sound: 'assets/sounds/family_members/younger sister.wav',
      image:'assets/images/family_members/family_younger_sister.png',
      jpName: 'imoto',
      enName: 'younger_sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder:(context,index){
          return ListItem
            (
            number: familyMembers[index],
            color: Colors.green,
            itemType:'family_members' ,
          );
        } ,
      ),
    );
  }
}
