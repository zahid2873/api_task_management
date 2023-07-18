import 'package:flutter/material.dart';
import 'package:task_management/widget/custome_button.dart';

import '../widget/task_widget.dart';
import '../utils/utils.dart';

class AllTask extends StatefulWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  State<AllTask> createState() => _AllTaskState();
}

class _AllTaskState extends State<AllTask> {
  final textItem = ["demo1","demo2"];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: size.height*0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://media.istockphoto.com/id/1013355986/photo/close-up-of-calendar-and-clock-on-green-background-planning-for-business-meeting-or-travel.jpg?s=612x612&w=0&k=20&c=ZUyjgj2CjJ-r-6-iEf4pt1VmU1i5aLYAOJfISvlnC_Q=")),
              ),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back,color: Colors.blueGrey,)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.blue,)),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12.5),
                          ),
                          child: Text("+",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month_sharp,color: Colors.blue,)),
                      Text("2",style: TextStyle(color:Colors.black),)
                    ],
                  )
                ],
              ),
            ),
            ListView.builder(
                itemBuilder: (context,index){
                  return Dismissible(
                    background: leftEditingIcon,
                    secondaryBackground: rightDeleteIcon,
                    key: ObjectKey(index),
                      onDismissed: (DismissDirection direction){
                         print("Dismissed");
                      },
                      confirmDismiss: (DismissDirection direction) async{
                        print("Confimering dismiss");
                        if(direction == DismissDirection.startToEnd){
                          showModalBottomSheet(
                              backgroundColor: Colors.black.withOpacity(.3),
                              barrierColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                              ),
                              context: context, 
                              builder: (BuildContext context){
                                return Container(
                                  height: size.height*.5,
                                  width: double.infinity,
                                  alignment: Alignment.center,

                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ButtonWidget(ContainerColor: Colors.indigo, text: "View", txtColor: Colors.white),
                                        SizedBox(
                                          height: size.height*.02,
                                        ),
                                        ButtonWidget(ContainerColor: Colors.indigo, text: "Edit", txtColor: Colors.blueAccent),
                                      ],
                                    ),
                                  ),
                                );
                              }
                          );
                          return false;
                        }else {
                          return Future.delayed(Duration(seconds: 2),()=>direction==DismissDirection.startToEnd);
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                          child: TaskWidget(text: textItem[index], color: Colors.indigo)));
                },
              itemCount: textItem.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
            ),
            //
          ],
        ),
      ),
    );
  }
}
