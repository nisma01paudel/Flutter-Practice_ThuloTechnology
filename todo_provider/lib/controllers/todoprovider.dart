import 'package:flutter/material.dart';
import 'package:todo_provider/models/todo.dart';

class ToDoProvider extends ChangeNotifier {
  final List<ToDo> _todos = [];

  List<ToDo> get todos => _todos;

  void addTodo(ToDo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void deleteTodo(ToDo todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}
