import 'package:flutter/material.dart';
import 'package:implicit_animations/paginas/Automatica.dart';
import 'package:implicit_animations/paginas/Basicas.dart';
import 'package:implicit_animations/paginas/Curvas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int paginaIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Implicit Animations")),
        body:getBody(),
        bottomNavigationBar:getFooter(),
        
      ),
    );
  }

  Widget getFooter(){
    List inconosItems=[
      Icons.edit_square,
      Icons.auto_graph,
      Icons.engineering
    
    ];
    List textoItems=[
      "Basicas",
      "Curvas",
      "Automaticas"
    ];
    return Container(
      height:90 ,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left:20 ,right:20,top: 20 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:List.generate(textoItems.length, (index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  paginaIndex=index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    inconosItems[index],
                    color: paginaIndex==index ? Colors.blue:Colors.grey
                  ),
                  Text(
                    textoItems[index],
                    style:TextStyle(color:paginaIndex==index ? Colors.blue:Colors.grey)
                  )
                ]
              ),
            );       
          })      
        ),
      ),
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: paginaIndex,
      children: [
        Basicas(),
        Curvas(),
        Automatica()
      ],
    );
  }
}