import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/controllers/todoprovider.dart';
import 'package:todo_provider/models/todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<ToDoProvider>(context);
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text(
            "To-dos",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _addTask(context);
          },
          child: Icon(Icons.add),
          heroTag: 'addTaskButton',
        ),
        body: ListView.builder(
            itemCount: todoProvider.todos.length,
            itemBuilder: (c, i) {
              return ListTile(
                title: Text(todoProvider.todos[i].title),
                subtitle: Text(todoProvider.todos[i].description),
              );
            }));
  }

  void _addTask(BuildContext context) {
    final todoProvider = Provider.of<ToDoProvider>(context, listen: false);
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    print("Before showing the dialog");

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('New Task'),
          content: SingleChildScrollView(
            // Helps handle overflow
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  // Added padding for better layout
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Enter Title",
                        ),
                        controller: titleController,
                      ),
                      SizedBox(height: 10), // Spacing between fields
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Enter description",
                        ),
                        controller: descriptionController,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              // Changed from MaterialButton to TextButton
              child: Text('Add'),
              onPressed: () {
                ToDo todo =
                    ToDo(titleController.text, descriptionController.text);
                todoProvider.addTodo(todo);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
