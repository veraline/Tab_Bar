import 'package:flutter/material.dart';
import 'package:tab_bar/main.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: DefaultTabController(length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.music_note),),
              Tab(icon: Icon(Icons.music_video),),
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(icon: Icon(Icons.grade),),
              Tab(icon: Icon(Icons.email),),
            ],) ,
            title: const Text("Hello Vera"),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: const TabBarView(children: [
            Icon(Icons.music_note),
            Icon(Icons.music_video),
            Icon(Icons.camera_alt),
            Icon(Icons.grade),
            Icon(Icons.email),
          ],
        ),
        ),

    ),
    );
  }
}
