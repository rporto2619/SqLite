import 'dart:async';
import 'package:flutter_sqlite_todo/data/models/task_model.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TaskLocalDataSource {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), 'task_database.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE tasks (id INTEGER PRIMARY KEY AUTOINCREMENT, content TEXT, date TEXT, state INTEGER)');
  }

  Future<void> addTask(TaskModel task) async {
    // TODO
  }

  Future<List<TaskModel>> getAllTasks() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('tasks');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return TaskModel(
        id: maps[i]['id'],
        content: maps[i]['content'],
        date: DateTime.parse(maps[i]['date']),
        state: maps[i]['state'] == 0 ? false : true,
      );
    });
  }

  Future<void> deleteTask(id) async {
    // TODO
  }

  Future<void> deleteAll() async {
    // TODO
  }

  Future<void> updateTask(TaskModel task) async {
    // TODO
  }
}
