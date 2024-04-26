import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<String> todolist = [];
  void _addTask() {
    // Prompt user to enter a task
    TextEditingController _todocontroller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('New Task'),
        content: TextField(controller: _todocontroller),
        actions: [
          MaterialButton(
            child: const Text('Add'),
            onPressed: () {
              setState(() {
                todolist.add(_todocontroller.text);
                // controller.clear();
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _updateTask(index) {
    // Prompt user to enter a task
    TextEditingController _todocontroller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        _todocontroller.text = todolist[index];
        return AlertDialog(
          title: const Text('Update existing'),
          content: TextField(controller: _todocontroller),
          actions: [
            MaterialButton(
              child: const Text('Update'),
              onPressed: () {
                setState(() {
                  todolist[index] = _todocontroller.text;
                  // controller.clear();
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
          backgroundColor: Colors.green[300],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _addTask();
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: todolist.length,
            itemBuilder: (c, i) {
              return ListTile(
                  title: Text(todolist[i]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              todolist.remove(todolist[i]);
                            });
                          },
                          icon: Icon(Icons.delete)),
                      IconButton(
                          onPressed: () {
                            _updateTask(i);
                          },
                          icon: Icon(Icons.edit)),
                    ],
                  ));
            }));
  }
}
