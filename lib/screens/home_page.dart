import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // here the desired height
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("DRINKAWA"),
                    Image.asset(
                      "assets/agua1.png",
                      scale: 5,
                    )
                  ]),
            ),
          )),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            IndicadorProgreso(),
            Image.asset(
              "assets/agua1.png",
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue.shade100),
                onPressed: () {
                  addTomadaAgua(context);
                },
                child: Text("Agregar tomada de agua")),
            SizedBox(
              height: 20,
            ),
            Text("Recuerda hacer Ejercicio"),
            SizedBox(
              height: 20,
            ),
            Text("Recuerda Comer Saludable")
          ],
        ),
      ),
    );
  }

  void addTomadaAgua(BuildContext context) {}
}

class IndicadorProgreso extends StatefulWidget {
  State createState() => _IndicadorProgresoState();
}

class _IndicadorProgresoState extends State<IndicadorProgreso>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(microseconds: 10000000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          //Do somethind
        });
      });
    controller.repeat();
  }

  void dispose() {
    // TODO: implement dispose
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: LinearProgressIndicator(value: animation.value),
      ),
    );
  }
}
