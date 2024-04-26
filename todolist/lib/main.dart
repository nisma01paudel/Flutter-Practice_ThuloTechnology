import 'package:flutter/material.dart';
// import 'package:navigationbar/todo.dart';

void main() => runApp(MaterialApp(
      home: MyTodoApp(),
    ));

class MyTodoApp extends StatefulWidget {
  @override
  State<MyTodoApp> createState() => _MyTodoAppState();
}

class _MyTodoAppState extends State<MyTodoApp> {
  List<Todo> allTodos = [
    Todo("Get Up", true),
    Todo("Meditate", true),
    Todo("Read Book", true),
    Todo("Code", true),
    Todo("Breakfast", false),
  ];

  void updateTodo(int index, bool isCompleted) {
    setState(() {
      allTodos[index].isActive = isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todo App'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Active'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: ListView(children: [
              for (var todo in allTodos.where((todo) => todo.isActive))
                ListTile(
                  title: Text(todo.title),
                  leading: Icon(Icons.info),
                  trailing: IconButton(
                    icon: Icon(Icons.move_down),
                    onPressed: () {
                      updateTodo(allTodos.indexOf(todo), false);
                    },
                  ),
                ),
            ])),
            Center(
                child: ListView(children: [
              for (var todo in allTodos.where((todo) => !todo.isActive))
                ListTile(
                    title: Text(todo.title),
                    leading: Icon(Icons.info),
                    trailing: IconButton(
                      icon: Icon(Icons.move_down),
                      onPressed: () {
                        updateTodo(allTodos.indexOf(todo), true);
                      },
                    )),
            ])),
          ],
        ),
      ),
    );
  }
}

class Todo {
  String title;
  bool isActive;

  Todo(this.title, this.isActive);
}
