import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem ({required this.number, required this.color, required this.itemType}) ;
final Item number ;
final Color color;
final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
    color: color,
    height: 100.0,
    child: Row(
    children: [
    Container(
    color: Color(0xffFFF6dc),
    child: Image.asset(
      number.image,
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(
    left: 16.0,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
      number.jpName,
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.white,
    ),
    ),
    Text(
      number.enName,
style: TextStyle(
fontSize: 18.0,
color: Colors.white,
),
),
],
),
),
Spacer(
flex: 1,
),
Padding(
padding: const EdgeInsets.only(
right: 16.0,
),
child: IconButton(
onPressed:(){
  try
  {
    AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
    player.load(number.sound);
  }catch(ex){
    print(ex);
  }
} ,
icon: Icon(
Icons.play_arrow,
color: Colors.white,
size: 30.0,
),
),
),
],
),
);
  }
}
