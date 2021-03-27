import 'package:drinkawa_v2/screens/screen_2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
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
      body: SizedBox(
        height: 1000,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
                child: Text("¿Por que descargaste la app?"),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue.shade100),
                  onPressed: () {
                    _showSecondScreen(context);
                  },
                  child: Text("Quiero cuidar mi salud"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue.shade300),
                  child: Text("Quiero beber mas agua"),
                  onPressed: () {
                    _showSecondScreen(context);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue.shade400),
                  child: Text("Quiero hacer ejercicio"),
                  onPressed: () {
                    _showSecondScreen(context);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondScreen(BuildContext context) {
    Navigator.of(context).pushNamed("/second");
  }
}
