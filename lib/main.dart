import 'package:flutter/material.dart';

void main()=>runApp(
  new MaterialApp(
    title: "klimatic",
    theme: new ThemeData(
      primarySwatch: Colors.red.shade900
    ),
    home: new Klimatic()
  )
);

class Klimatic extends StatefulWidget {
  @override
  _KlimaticState createState() => _KlimaticState();
}

class _KlimaticState extends State<Klimatic> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Klimatic"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.menu), 
            onPressed: ()=>debugPrint("Menu is tapped")
            )
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Center(
            child: Image.asset("images/red_umbrella.jpg",
            height: 5000,
            fit: BoxFit.fill
            ),
          ),
          new Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.fromLTRB(0.0, 10, 20, 0),
            child: new Text("City",
            style: cityTextStyle(),)
          ),
          new Container(
            alignment: Alignment.center,
            child: new Image.asset("images/light_rain.png")
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(30, 290, 0, 0),
            child: new Text("43.8",
            style: tempStyle()),
          )
        ],
      ),
      );
  }
}

TextStyle cityTextStyle() {
  return new TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic
  );
}
TextStyle tempStyle() {
  return new TextStyle(
    color: Colors.white,
    fontSize: 49,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal
  );
}