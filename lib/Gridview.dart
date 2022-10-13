import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: 
                Image(image: NetworkImage("https://images.yourstory.com/cs/1/d05f0f20ee7011ea887bf56a537694f1/unnamed-1599217984696.png"),)
                
              ),
              ListTile(

                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(title: Text("GridView")),
        body: GridView.count(

          crossAxisCount: 2,
          crossAxisSpacing: 1,
          children: List.generate(100, (index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.network(
                        'https://picsum.photos/500/500?random=$index',
                        height: 100,

                      ),
                    ),
                    Text(
                      'Text $index',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}