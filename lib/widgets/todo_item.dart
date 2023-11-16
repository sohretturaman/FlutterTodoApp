// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatelessWidget {

  final Todo todo; // took cunstructor from model folder under todo file and imported into stateless widget
  const TodoItem({super.key,required this.todo}); //!! improtant , give that veraibale as a const paramether

  @override
  Widget build(BuildContext context) {
    return Container(
      //to configure that item's margin use the margin here !!
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        onTap: () {
          print('list item is pressed');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // iconColor: Colors.amberAccent,
        textColor: Colors.white,
        tileColor: Colors.blue[900],
        leading: Icon(
          //to give an icon on start of listTile
          Icons.square_outlined,
          color: Colors.amber,
        ),
        //subtitle: Text('random'),
        title: Text(
          todo.todoText!,// you must put ! , otherwise it is not gonna work
          style: TextStyle(fontSize: 20,decoration: TextDecoration.lineThrough),
        ),
        trailing: IconButton( //to give the item on the end of listTile//wrap with a container optional
          onPressed: () {
            print('delete icon is pressed');
          },
          icon: Icon(Icons.delete,color: Colors.red,size: 18),
          
        ),
      ),
    );
  }
}


//NOOTE : created a widget folder to give most used components into this folder
//and the file name starts with lowecase leters but in classes , in statefull,stateless widgets
//names should start with captal later and it should be camelCase
