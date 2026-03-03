import 'package:flutter/material.dart';
import 'package:flutter_application_nav_route/pages/setting_page.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _MyPageHomeState();
  }
}

class _MyPageHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return MySettingPage();
                })
              );
          },
          child: Text("Aller page setting"),
      ),
    )
    );
  }
  
}
