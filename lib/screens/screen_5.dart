import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // here the desired height
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("DRINKAWA")]),
            ),
          )),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text("Debes tomar " + /*cantAgua() +*/ " 2.5 lts de Agua al dia"),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/agua1.png"),
            SizedBox(
              height: 20,
            ),
            Text("Llevaremos un control de tu consumo de agua"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue.shade100),
                onPressed: () {
                  showSixthScreen(context);
                },
                child: Text("Siguiente")),
          ],
        ),
      ),
    );
  }

  void showSixthScreen(BuildContext context) {
    Navigator.of(context).pushNamed("/sixth");
  }

  String cantAgua(genero, tiempo, peso) {
    double ltsAgua;
    if (genero == "mujer") {
      ltsAgua = (peso * 0.03) + (tiempo * 0.4);
    } else {
      ltsAgua = (peso * 0.04) + (tiempo * 0.6);
    }

    String ltsString = ltsAgua.toString() + " " + genero;
    return ltsString;
  }
}
