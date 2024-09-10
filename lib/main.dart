import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());


}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
    home:MyHomePage(),
      debugShowCheckedModeBanner: false,
    );

  }

}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() =>
      _MyHomePageState();
}

class _MyHomePageState extends State <MyHomePage>
{
  String inputText = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Введите текст: ",style: TextStyle(fontSize: 20),),
            SizedBox(height: 10),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 50),
            child:TextField(
              onChanged: (value){
                setState(() {
                  inputText=value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Текст",
              ),
            ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(inputText),
                    duration: Duration(seconds:5),
                ),
              );
              },
              child: Text("Нажать ", style: TextStyle(fontSize: 20),),),
              SizedBox(height: 20),

            

          ],
        )
      ),
    );
  }
}