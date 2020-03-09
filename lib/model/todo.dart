import 'package:intl/intl.dart';

class Todo {
  final String title;
  final String description;
  final DateTime date;

  Todo(this.title, this.description, this.date);

  Todo.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        description = json["description"],
        date = json["date"];

  @override
  String toString() {
    return 'TodoModel: { title: $title, description: $description, date: $date }';
  }
}
