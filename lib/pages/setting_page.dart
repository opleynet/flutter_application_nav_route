import 'package:flutter/material.dart';
import 'package:flutter_application_nav_route/pages/home_page.dart';

class MySettingPage extends StatefulWidget {
  const MySettingPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MySettingState();
  }
}

class _MySettingState extends State<MySettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // pop retourne a Home page
            Navigator.pop(context);
          },
          child: Text("Aller page home"),
        ),
      ),
    );
  }
}
