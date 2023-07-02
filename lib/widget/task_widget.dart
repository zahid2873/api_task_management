import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final text;
  final color;
  const TaskWidget({Key? key,required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .08,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text(text, style: TextStyle(color: color),),
    );
  }
}
