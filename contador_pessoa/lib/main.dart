import 'package:flutter/material.dart';



class MyApp extends StatelessWidget{

int count = 0;

void increment(){
  setState(() {
  count++;});
  print(count);
}

void decrement(){
  setState(() {
  count--;});
  print(count);
}


@override
Widget build(BuildContext context) {
  return MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.white,
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assert/img/restaurant.png"),
        fit: BoxFit.cover
        )
      ),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Pode entrar!", style: TextStyle(fontSize: 30, color: Colors.black),),
      Text(count.toString(), style: TextStyle(fontSize: 30, color: Colors.black)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: decrement,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)
              )
            ),
            child: Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.black26)),
          ),

          SizedBox(width: 64),

          TextButton(
            onPressed: increment,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)
              )
            ),
            child: Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.black)),
          )
        ],
      )
      ],
    ),
    )));
  
}
}

