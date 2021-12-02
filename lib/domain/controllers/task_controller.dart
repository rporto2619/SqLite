import 'package:flutter_sqlite_todo/data/models/task_model.dart';
import 'package:flutter_sqlite_todo/data/repositories/task_repository.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  final _tasks = <TaskModel>[].obs;
  TaskRepository repository = Get.find();
  //List<TaskModel> get getAllTasks =>

  List<TaskModel> get tasks => _tasks;

  @override
  onInit() {
    super.onInit();
    getAllTasks();
  }

  Future<void> addTask(task) async {
    // TODO
  }

  Future<void> getAllTasks() async {
    // TODO
  }

  Future<void> deleteTask(id) async {
    // TODO
  }

  Future<void> deleteAll() async {
    // TODO
  }

  Future<void> updateTask(user) async {
    // TODO
  }
}
