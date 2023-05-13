import 'package:flutter/material.dart';

class Basicas extends StatefulWidget {
  const Basicas({super.key});

  @override
  State<Basicas> createState() => _BasicasState();
}

class _BasicasState extends State<Basicas> {
  double width=100;
  double height=50;
  double opacidad=1;
  double angulo=0;
  double curvas=0;
  double sombra=0;
  Color color=Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacidad,
              child: AnimatedContainer(
                width: width,
                height: height,
                transform: Matrix4.identity()..rotateZ(angulo),
                transformAlignment: FractionalOffset.center,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(curvas),
                  boxShadow: [BoxShadow(
                      color: Colors.red,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: sombra,
                      spreadRadius: sombra,
                    ),
                  ] 
                ),
              duration: Duration(milliseconds:600),
              ),
              duration: Duration(milliseconds:600),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacidad=opacidad==1?0:1;
  
                });
                },
              child: Text('mostrar ocultar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  width=width==100?250:100;
                  height=height==50?100:50;
                });
                },
              child: Text('cambiar tamaño'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  angulo=angulo==0?90:0;
                });
                },
              child: Text('rotar'),
            ),
             ElevatedButton(
              onPressed: () {
                setState(() {
                  color=color==Colors.orange?Colors.blue:Colors.orange;
                });
                },
              child: Text('cambiar color'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  curvas=curvas==0?50:0;
                });
                },
              child: Text('cuadrado circular'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sombra=sombra==0?10:0;
                });
                },
              child: Text('sombra'),
            ),
          ],
      ),
    );
  }
}