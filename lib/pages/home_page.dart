import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyPageHomeState();
  }
}

class _MyPageHomeState extends State<MyHomePage> {
      final dio = Dio();
    List pays = [];
  @override
  Widget build(BuildContext context) {


 
    getCountries() async {
      final response = await dio.get("https://restcountries.com/v3.1/all?fields=name,flags");
      //print(response);    
      setState(() {
        pays = response.data;
        print(pays);
      });
    }



    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        elevation: 18,
        actions: [
          IconButton(
            onPressed: (){
                getCountries();
            }, 
            icon: Icon(Icons.refresh)),
        ],
        ),
      body: Row(
        children: [
          SizedBox(
            height: 500,
            width: 300 ,
            child: ListView.builder(
              itemCount: pays.length,
              itemBuilder: (context,Index){
                return ListTile(
                  leading: Image.network(pays[Index]['flags']['png'],width: 50,),
                  title: Text(pays[Index]['name']['common']),
                );
            }),
          ),
          Center(
            child: Container(
              width: 400,
          
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  Text("Bienvenu"),
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
        ],
      ),
    );
  }
}
