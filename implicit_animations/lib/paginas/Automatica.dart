import 'dart:async';

import 'package:flutter/material.dart';

class Automatica extends StatefulWidget {
  const Automatica({super.key});

  @override
  State<Automatica> createState() => _AutomaticaState();
}

class _AutomaticaState extends State<Automatica> {
  double opacidad=1;
  double escala=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) { 
      setState(() {
        opacidad=opacidad==1?0:1;
        escala=escala==1?0.5:1;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: AnimatedOpacity(
              opacity:opacidad ,
              duration: Duration(milliseconds: 1000),
              child: Image(image: NetworkImage("https://cdn.stocksnap.io/img-thumbs/960w/donut-sprinkles_GI8MR5LOLC.jpg"))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
              child: AnimatedScale(
                duration: Duration(milliseconds: 1000),
                scale: escala,
                child: Image(image: NetworkImage("https://cdn.stocksnap.io/img-thumbs/960w/donut-sprinkles_GI8MR5LOLC.jpg"))
            ),
          ),
        ],
      ),
    );
  }
}