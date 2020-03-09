import 'package:rxdart/rxdart.dart';
import '../model/todo.dart';
import 'package:intl/intl.dart';

class TodoBloc {
  final BehaviorSubject<List<Todo>> _todoList = BehaviorSubject<List<Todo>>.seeded([
    Todo('Buy egs', 'pls buy egs for lunch', DateTime.now()),
    Todo('Fit after work', 'goin to the fitnes', DateTime.now()),
  
    Todo('Finish tasks', 'review tasks in notion', DateTime.now()),
  ]);

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
  
  List<Todo> get list => _todoList.value;

  dispose() {
    _todoList.close();
  }
}

final todoBloc = TodoBloc();
