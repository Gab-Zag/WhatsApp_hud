import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){

              },
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'LIGAÇÕES'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center( child: Text('Chats'),),
            Center(child: Text('Status'),),
            Center(child: Text('Calls'),),
          ],
        ), 
      )
    );
  }
}