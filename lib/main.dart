import 'package:flutter/material.dart';
import 'package:untitled10/views/Home/view.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:HomeView()

    );
  }
}








