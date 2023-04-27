import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic calculator"),),
      body: EsasSehife(),
    );
  }
}

class EsasSehife extends StatefulWidget {

  @override
  State<EsasSehife> createState() => _EsasSehifeState();
}

class _EsasSehifeState extends State<EsasSehife> {

  double eded1 = 0, eded2 = 0, netice = 0;

  TextEditingController eded1Controller = TextEditingController();
  TextEditingController eded2Controller = TextEditingController();

  void ededTopla(){
    setState(() {
      eded1 = double.parse(eded1Controller.text);
      eded2 = double.parse(eded2Controller.text);
      netice = eded1 + eded2;
    });
  }

  void ededCix(){
    setState(() {
      eded1 = double.parse(eded1Controller.text);
      eded2 = double.parse(eded2Controller.text);
      netice = eded1 - eded2;
    });
  }

  void ededVur(){
    setState(() {
      eded1 = double.parse(eded1Controller.text);
      eded2 = double.parse(eded2Controller.text);
      netice = eded1 * eded2;
    });
  }

  void ededBol(){
    setState(() {
      eded1 = double.parse(eded1Controller.text);
      eded2 = double.parse(eded2Controller.text);
      netice = eded1 / eded2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: [
            Text("$netice"),
            TextField(
              controller: eded1Controller,
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: eded2Controller,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: ededTopla, child: Text("Topla")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: ededCix, child: Text("Çıx")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: ededVur, child: Text("Vur")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: ededBol, child: Text("Böl")),
          ],
        ),
      ),
    );
  }
}
