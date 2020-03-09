import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ui/TodoListScreen/TodoListScreen.dart';
import 'ui/AddTodoScreen/AddTodoScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: '/todoListScreen',
      routes: {
        '/todoListScreen': (context) => TodoListScreen(),
        '/addTodoScreen': (context) => AddTodoScreen(),
      },
      title: 'Flutter Demo',
    );
  }
}
