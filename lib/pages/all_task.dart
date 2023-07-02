import 'package:flutter/material.dart';

import '../widget/task_widget.dart';

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
                  return TaskWidget(text: textItem[index], color: Colors.indigo);
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
