import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final int id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCancelled;

  Todo(
      {required this.id,
      required this.task,
      required this.description,
      this.isCompleted,
      this.isCancelled}) {
    isCancelled = isCancelled ?? false;
    isCompleted = isCompleted ?? false;
  }

  Todo copyWith(
      {int? id,
      String? task,
      String? description,
      bool? isCompleted,
      bool? isCancelled}) {
    return Todo(
        id: id ?? this.id,
        task: task ?? this.task,
        description: description ?? this.description,
        isCompleted: isCompleted ?? this.isCompleted,
        isCancelled: isCancelled ?? this.isCancelled);
  }

  @override
  List<Object> get props => [id, task, description];

  static final List<Todo> todos = [
    Todo(
        id: 1,
        task: 'task1',
        description: 'new task'),
    Todo(
        id: 2,
        task: 'task2', 
        description: 'new task 2'),
  ];
}
