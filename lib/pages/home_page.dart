import 'package:flutter/material.dart';

import 'add_task.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          //color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://media.istockphoto.com/id/1013355986/photo/close-up-of-calendar-and-clock-on-green-background-planning-for-business-meeting-or-travel.jpg?s=612x612&w=0&k=20&c=ZUyjgj2CjJ-r-6-iEf4pt1VmU1i5aLYAOJfISvlnC_Q=",),),
        ),
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 25,right: 25,bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello",style: TextStyle(fontSize: 38,color: Colors.black,fontWeight: FontWeight.w900),),
                    Text("start your beautiful day",style: TextStyle(color: Colors.black),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()));
                    },
                      height: MediaQuery.of(context).size.height *.08,
                      minWidth: double.infinity,
                      color: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text("Add Task"),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05),
                    MaterialButton(onPressed: (){},
                      height: MediaQuery.of(context).size.height *.08,
                      minWidth: double.infinity,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text("View All"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
