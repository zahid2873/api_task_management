import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color ContainerColor;
  final Color txtColor;
  final String text;

  const ButtonWidget({Key? key,required this.ContainerColor, required this.text, required this.txtColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .08,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: ContainerColor,
      ),
      child: Text(text,style: TextStyle(color: txtColor),),
    );
  }
}
