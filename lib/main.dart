import 'package:flutter/material.dart';
import 'package:lab5/Pages/Friends.dart';
import 'package:lab5/urlModele.dart';
import 'Pages/Messages.dart';
import 'Pages/Posts.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(title:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween
          
          , children:[ Icon(Icons.facebook),Text('Latest Posts'),Icon(Icons.facebook)]),
            bottom: TabBar(tabs: [Row(children:[ Text('Posts '),Icon(Icons.post_add)]),
             Row(children:[Text('Friends '),Icon(Icons.people)]),
              Row(children:[Text('Messages '),Icon(Icons.message)]),
              Row(children:[Text('Connect '),Icon(Icons.network_cell)]),
]),
          ),
          body: TabBarView(
            children: [Container (width:double.infinity,height:double.infinity,child: Posts()),
             Friends(), 
             Messages(),
             urlModele()],
          ),
        ));
  }
}
