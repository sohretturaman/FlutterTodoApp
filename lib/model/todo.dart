// here is one the most important point , 
//take caution abut contructors and lists also dislaying this list

class Todo {
  int? id;
  String? todoText;
  bool? isComp;

  Todo(
      {required this.id,
      required this.todoText,
      this.isComp = false}); // Dont forget to use this **gave default value for bool , cuz it is not required

  static List<Todo> todoList() { // created list item with static !!
    return [
      Todo(id: 1, todoText: 'firt item', isComp: false),
      Todo(id: 2, todoText: 'second item', isComp: true),
      Todo(id: 3, todoText: 'third item', isComp: false),
      Todo(id: 4, todoText: 'fourth item', isComp: true),
      Todo(id: 5, todoText: 'fifth item', isComp: true),
      Todo(id: 6, todoText: 'sixth item', isComp: false)
    ];
  }
}

/**
 * 
 * Use List<E> class to manage an indexable collection of elements. Lists are zero-based indexing.
Use the add() method to append an element to a list.
Use the remove() method to remove an element from a list.
Use for, for-in, and forEach() to iterate over list elements.
Use the final keyword to define a list that can be assigned once.
Use the const keyword to define an immutable list.
 */
