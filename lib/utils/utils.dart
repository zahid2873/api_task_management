import 'package:flutter/material.dart';

final leftEditingIcon = Container(
  margin: EdgeInsets.only(bottom: 10),
  color: Colors.blueGrey,
  child: IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.black,),
  alignment: Alignment.center,
);

final rightDeleteIcon = Container(
  margin: EdgeInsets.only(bottom: 10),
  color: Colors.redAccent,
  child: IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.white,),
  alignment: Alignment.center,
);