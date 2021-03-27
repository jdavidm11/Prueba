import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String genero = "";

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
                child: Text("Selecciona tu genero"),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 200,
                width: 400,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "assets/female.png",
                        scale: 1,
                      ),
                      Image.asset(
                        "assets/male.png",
                        scale: 1,
                      ),
                    ],
                  ),
                ),
              ),
              //----------------------------------------------------
              SizedBox(
                height: 100,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink.shade100),
                          onPressed: () {
                            showThirdScreen(context);
                            genero = "Mujer";
                            print(genero);
                          },
                          child: Text("Mujer")),
                    ),
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlue.shade100),
                          onPressed: () {
                            showThirdScreen(context);
                            genero = "Hombre";
                            print(genero);
                          },
                          child: Text("Hombre")),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showThirdScreen(BuildContext context) {
    Navigator.of(context).pushNamed("/third");
  }
}
