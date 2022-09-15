import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit() : super(ToDoInit());

  List<ToDo> list = [];

  void addNewDataToDo(String name) {
    if(name.isNotEmpty) {
      list.add(ToDo(Name: name, Datetime: DateTime.now().toString(), isSelected: false));
    }
    emit(ToDoState());
  }

  void removeToDo(ToDo toDo) {
    list.remove(toDo);
    emit(ToDoState());
  }

  void change(ToDo toDo) {
    toDo.isSelected = !toDo.isSelected;
    emit(ToDoState());
  }

}

class ToDoState {}

class ToDoInit extends ToDoState {}

class ToDo {
  String Name;
  String Datetime;
  bool isSelected;

  ToDo({required this.Name, required this.Datetime, required this.isSelected});
}