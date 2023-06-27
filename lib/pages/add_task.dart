import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController taskNameController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: taskNameController,
              decoration: InputDecoration(
                hintText: "Task Name",
                filled: true,
                fillColor: Colors.grey.shade200,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
            ),
            ),
          )
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: taskDescriptionController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Task Detail",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child:  MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()));
              },
                height: MediaQuery.of(context).size.height *.08,
                minWidth: double.infinity,
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text("Add"),
              ),
          )


        ],
      ),
    );
  }
}
