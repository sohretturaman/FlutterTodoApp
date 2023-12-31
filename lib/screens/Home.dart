// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/custom_pressable_cont.dart';
import '../widgets/todo_item.dart';
// use elevated button and textinput to create new note
//create the function give class as paramather then change status but use setState
//importantt 24.17 you give paramathers , and functions in widget paramathers , you declare then above the widget constructor

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = Todo
      .todoList(); // here is important you shoulld import the list from the class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        _TextButtonForTaksIncludeTextfield(),
        _TextButtons(),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(top: 20),
            children: [
              for (Todo todo in todoList)
                TodoItem(
                  todo: todo,
                  handleTodoChage: _handleTodoChange,
                  onDeleteIcon: _onDeleteIcon,
                ) // only point to functions create functions at bottom
            ],
          ),
        )
      ]),
    );
  }

  void _handleTodoChange(Todo todo) {
    // don't forget to take value, it works like other backend languages , not js
    print('clicked function is worked');
    setState(() {
      todo.isComp =
          !todo.isComp!; // use setState , otherwise you can't update value
    });
  }

  void _onDeleteIcon(int id) {
    print('what is the id $id');
    setState(() {
       todoList.removeWhere((val)=>val.id == id);
    });
    
  }

  Container _TextButtons() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomPressableContainer(),
          GestureDetector(
              onTap: () {
                print('Tasks header been clicked');
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.black,
                            width: 1))),
                padding:
                    EdgeInsets.only(bottom: 0, right: 10, left: 10, top: 20),
                child: Text(
                  'Tasks',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )),
        ],
      ),
    );
  }

  Container _TextButtonForTaksIncludeTextfield() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      color: Colors.white,
      child: Column(
        children: [
          TextFieldWriteTodo(),
          SizedBox(
            height: 20,
            width: 10,
          ),
          TextButton(
            // add Task button
            // create a button
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(16.0),
              textStyle: TextStyle(fontSize: 15),
              backgroundColor: Colors.black,
              shadowColor: Colors.black12,
              elevation: 1,
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Text(
              'Add Note',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget TextFieldWriteTodo() {
    // when you extract the method , you can also say widget widName, or widgtType widName(wihich default)
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'write a todo',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 17)),
    );
  }

  AppBar _AppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.black87,
            size: 30,
          ),
          Text('Todo App'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 60,
            width: 60,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                    'https://picsum.photos/200') // give image like that
                ),
          ),
        ],
      ),
    );
  }
}

/*for search item
children: [
            TextField(
          
  
              decoration: InputDecoration(
              
                prefixIcon: Icon(Icons.circle_outlined),//imp to give pre icon in search input
                prefixIconColor: Colors.black,
                 border: OutlineInputBorder(),// to give the strike border
                     labelText: 'search a todo',
                     labelStyle: TextStyle( color: Colors.black12),
                     hintText: 'search',    // to give placeholder !!
                     hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),
              ),
              
             
            ),
            ]
*/

/** can use cart item to display list items but will use listTile in TodoItem widget
 *  Card(
               // padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Text('first item'),
              ),
 * 
 */
