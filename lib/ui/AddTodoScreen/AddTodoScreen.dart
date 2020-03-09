import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/bloc/todo_bloc.dart';
import 'package:flutter_bloc_example/model/todo.dart';
import 'package:flutter_bloc_example/ui/AddTodoScreen/bloc.dart';

class AddTodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add todo')),
      body: SafeArea(
        top: true,
        child: Container(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                onChanged: (text) {
                  addTodoScreenBloc.onChangeTitle(text);
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Description'),
                onChanged: (text) {
                  addTodoScreenBloc.onChangeDescription(text);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            todoBloc.addTodo(Todo(addTodoScreenBloc.titleInputValue,
                addTodoScreenBloc.descriptionInputValue, DateTime.now()));
            Navigator.pop(context);
          },
          child: Icon(Icons.add)),
    );
  }
}
