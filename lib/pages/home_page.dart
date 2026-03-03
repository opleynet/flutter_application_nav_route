import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyPageHomeState();
  }
}

class _MyPageHomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: Center(
        child: Container(
          width: 400,

          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mail');
                },
                child: Text("Aller page mail"),
              ),
              Divider(height: 20,color: Colors.red,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: Text("Aller page setting"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
