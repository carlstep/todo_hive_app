import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

// run this method if opening app for the first time
  void createInitialData() {
    toDoList = [
      ['make tutorial', false],
      ['buy milk', false],
      ['collect package', true],
    ];
  }

// load data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

// update database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
