import 'package:AppDevFinal/screens/question1.dart';
import 'package:AppDevFinal/screens/question2.dart';
import 'package:flutter/material.dart';

class QuestionNavigator extends StatefulWidget {
  QuestionNavigator({Key? key}) : super(key: key);

  @override
  _QuestionNavigatorState createState() => _QuestionNavigatorState();
}

class _QuestionNavigatorState extends State<QuestionNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Question1()),
              );
        },
        child: Text("Question 1")),
        ElevatedButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Question2()),
              );
        },
        child: Text("Question 2"))
      ],),
      )
    );
  }
}