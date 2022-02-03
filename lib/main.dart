// import 'package:flutter/material.dart';
import 'package:todo_bloc/entity/todo.dart';

void main() {
  Todo todo1 = Todo(id: 1, task: 'task', description: 'task', isCompleted: true, isCancelled: false);
  Todo todo2 = Todo(id: 1, task: 'task', description: 'task', isCompleted: true, isCancelled: false);


  print(todo1 == todo2);
  print(Todo.todos);
}