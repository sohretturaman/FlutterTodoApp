// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo
      todo; // took cunstructor from model folder under todo file and imported into stateless widget
  final handleTodoChage;
  final onDeleteIcon;
  const TodoItem(
      {super.key,
      required this.todo,
      required this.handleTodoChage,
      required this.onDeleteIcon}); //!! improtant , give that veraibale as a const paramether

  @override
  Widget build(BuildContext context) {
    return Container(
      //to configure that item's margin use the margin here !!
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        onTap: () {
          // when top on item
          handleTodoChage(todo); // give the paramather , take caution about it
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // iconColor: Colors.amberAccent,
        textColor: Colors.white,
        tileColor: Colors.blue[900],
        leading: Icon(
          todo.isComp!
              ? Icons.check_box
              : Icons
                  .square_outlined, //here you should give todo.isComp! , you can use a ! to force the value to not be null.
          //to give an icon on start of listTile

          color: Colors.amber,
        ),
        //subtitle: Text('random'),
        title: Text(
          todo.todoText!, // you must put ! , otherwise it is not gonna work
          style: TextStyle(
              fontSize: 20,
              decoration: todo.isComp!
                  ? TextDecoration.lineThrough
                  : TextDecoration
                      .none), // change the apparance accroding to value
        ),
        trailing: IconButton(
          //to give the item on the end of listTile//wrap with a container optional
          onPressed: () {
            // when top on delete icon
            onDeleteIcon(todo.id); // you should give the todo.id value as paramather
          },
          icon: Icon(Icons.delete, color: Colors.red, size: 18),
        ),
      ),
    );
  }
}

//NOOTE : created a widget folder to give most used components into this folder
//and the file name starts with lowecase leters but in classes , in statefull,stateless widgets
//names should start with captal later and it should be camelCase
