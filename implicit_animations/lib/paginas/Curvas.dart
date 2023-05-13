import 'package:flutter/material.dart';

class Curvas extends StatefulWidget {
  const Curvas({super.key});

  @override
  State<Curvas> createState() => _CurvasState();
}

class _CurvasState extends State<Curvas> {

  double width=50;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.bounceIn,
              duration: Duration(milliseconds:1000),
              width: width,
              height: 25,
              color: Colors.red,
              child: Center(child: Text("bounceIn",style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10,),
            AnimatedContainer(
              curve: Curves.bounceOut,
              duration: Duration(milliseconds:1000),
              width: width,
              height: 25,
              color: Colors.red,
              child: Center(child: Text("bounceOut",style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10,),
            AnimatedContainer(
              curve: Curves.bounceInOut,
              duration: Duration(milliseconds:1000),
              width: width,
              height: 25,
              color: Colors.red,
              child: Center(child: Text("bounceInOut",style: TextStyle(color: Colors.white))),
            ), 
            SizedBox(height: 10,),
            AnimatedContainer(
              curve: Curves.decelerate,
              duration: Duration(milliseconds:1000),
              width: width,
              height: 25,
              color: Colors.red,
              child: Center(child: Text("decelerate",style: TextStyle(color: Colors.white))),
            ), 
            SizedBox(height: 10,),
            AnimatedContainer(
              curve: Curves.ease,
              duration: Duration(milliseconds:1000),
              width: width,
              height: 25,
              color: Colors.red,
              child: Center(child: Text("ease",style: TextStyle(color: Colors.white))),
            ), 
            SizedBox(height: 10,),
            AnimatedContainer(
              curve: Curves.easeInExpo,
              duration: Duration(milliseconds:1000),
              width: width,
              height: 25,
              color: Colors.red,
              child: Center(child: Text("easeInExpo",style: TextStyle(color: Colors.white))),
            ), 
            SizedBox(height: 10,),
            AnimatedContainer(
              curve: Curves.linear,
              duration: Duration(milliseconds:1000),
              width: width,
              height: 25,
              color: Colors.red,
              child: Center(child: Text("linear",style: TextStyle(color: Colors.white))),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  width=width==50?300:50;
  
                });
                },
              child: Text('Reproducir'),
            ),
            
          ],
      ),
    );
  }
}