
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_todo_application/data_provider.dart';
import 'package:simple_todo_application/models/user_model.dart';

class ShowList extends ConsumerWidget {
  const ShowList({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title:const Text("To do List"),
      ),
      body: data.when(
        data: (data) {
          List<Data> datalist = data.map((e) => e).toList();
          return Column(
            children: [
              Expanded(child: ListView.builder(
                itemCount: datalist.length,
                itemBuilder: (context,index){
                  return Card(
                    color: Colors.blueAccent ,
                    elevation: 4,
                    margin: const  EdgeInsets.symmetric(vertical: 10),
                    child: Text(datalist[index].title.toString()),
                  );
                }
              ))
            ],
          );
        },
        error: (err,s)=> Text(err.toString()),
        loading: ()=>const Center(
          child: CircularProgressIndicator(),
        )
      ),
    );
  }
}