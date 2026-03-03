import 'package:flutter/material.dart';

class MyMailPage extends StatefulWidget{
  const MyMailPage({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _MyPageMailState();
  }
}

class _MyPageMailState extends State<MyMailPage>{
  String email ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail page"),
        elevation: 18,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            onChanged: (value){
              // setState reconstruit le widget
              setState(() {
                email= value;  
              });
            },
            decoration: const InputDecoration(
              hintText: "Entrez email",
              labelText: "E-Mail",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              helperText: "Votre email doit contenir @",
            ),
          ),
          Divider(height: 20,),
          //afficher un text avec la valeur du email qui prend pour valeur onChange
          Text(email),
        ],
      )
    );
  }
  
}
