import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_todo_application/todo-list.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,ref) {
 
    return Scaffold(

      appBar: AppBar(
        title: const Text("Home"),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.push(context,MaterialPageRoute(builder: (context) => ShowList()),),
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Change this to your desired color
          ),
          
          child:const Text("To do list",style: TextStyle(color: Colors.black),),
        )
      ),



    );
  }
}