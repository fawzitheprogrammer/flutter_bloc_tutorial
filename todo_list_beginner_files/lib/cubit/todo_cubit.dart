import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_list/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(Todo todo) {
    emit([...state, todo]);
  }

  void deleteTodo(Todo todo) {
    emit(state.where((t) => t.id != todo.id).toList());
  }
}
