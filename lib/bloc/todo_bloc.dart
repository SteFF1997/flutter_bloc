import 'package:rxdart/rxdart.dart';
import '../model/todo.dart';

class TodoBloc {
  final BehaviorSubject<List<Todo>> _todoList =
      BehaviorSubject<List<Todo>>.seeded(
    [
      Todo(
          title: 'Buy egs',
          description: 'pls buy egs for lunch',
          date: DateTime.now()),
      Todo(
          title: 'Fit after work',
          description: 'goin to the fitnes',
          date: DateTime.now()),
      Todo(
          title: 'Finish tasks',
          description: 'review tasks in notion',
          date: DateTime.now()),
    ],
  );

  addTodo(Todo newTodo) {
    _todoList.add([..._todoList.value, newTodo]);
    print('here=> ${_todoList.value.toString()}');
  }

  removeTodo(int index) {
    List<Todo> newList = _todoList.value;
    newList.removeAt(index);
    _todoList.add(newList);
    print('here=> ${_todoList.value}');
  }

  BehaviorSubject<List<Todo>> get todoList => _todoList;

  dispose() {
    _todoList.close();
  }
}

final todoBloc = TodoBloc();
