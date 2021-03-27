import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key key}) : super(key: key);

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  TextEditingController edadTextController;
  TextEditingController pesoTextController;
  TextEditingController horasTextController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("DRINKAWA")]),
            ),
          )),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10, width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(labelText: "¿Que edad tienes?"),
                controller: edadTextController,
                keyboardType: TextInputType.number),
          ),
          SizedBox(height: 10, width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(labelText: "¿Cuanto pesas?"),
              controller: pesoTextController,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 10, width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration:
                    InputDecoration(labelText: "¿Tiempo de Actividad Fisica"),
                controller: horasTextController,
                keyboardType: TextInputType.number),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue.shade100),
                onPressed: () {
                  showForthScreen(context);
                },
                child: Text("Siguiente")),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    edadTextController = TextEditingController();
    pesoTextController = TextEditingController();
    horasTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    edadTextController.dispose();
    pesoTextController.dispose();
    horasTextController.dispose();
  }

  void showForthScreen(BuildContext context) {
    Navigator.of(context).pushNamed("/forth");
  }
}