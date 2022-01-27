import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Home>createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String>tvshows = [
    "Friends",
    "Gossip Girl",
    "Brooklyn99",
    "13 Reasons Why",
    "Money Heist",
    "Little Things",
    "Stranger Things",
  ];
  int i = 0;

  Widget Template(item) {
    return Center(
      child: Container(
       // color: Colors.deepPurple,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child:RaisedButton(
        elevation: 50,
        onPressed: (){},
        highlightColor: Colors.deepPurpleAccent,
        hoverColor: Colors.deepPurpleAccent,
          textColor: Colors.cyan,




            child: Text(
                item
            ),
          ),
        ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),
        title: const Text(
            "My Fav Shows"
        ),
      ),

      body:
      Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: tvshows.map((tvshow) => Template(tvshow)).toList(),
      ),
        ),

      backgroundColor: Colors.blueGrey,

      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.blueGrey,
        backgroundColor:Colors.deepPurpleAccent,
        onPressed:(){},

        child: Icon(
          Icons.lightbulb_outline_rounded,
          color: Colors.white,
        ),
    )

    );
  }
}


