import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_study/Buoi9/module/todo_list_bloc.dart';

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({Key? key}) : super(key: key);

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  final myController = TextEditingController();
  ToDoCubit _toDoCubit = new ToDoCubit();
  late ToDo isSelected ;

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   myController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TodoList',
        ),
        actions: [
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                onPressed: () {
                  _toDoCubit.addNewDataToDo(myController.text);
                },
              ),
              IconButton(
                icon: const Icon(Icons.remove_circle),
                onPressed: () {
                  if(isSelected.isSelected) {
                    _toDoCubit.removeToDo(isSelected);
                  }
                },
              ),
            ],
          ),
        ],
      ),
      body: BlocBuilder(
        bloc: _toDoCubit,
        builder: (context, state){
          return Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: 'Nhập việc cần làm !',
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: _toDoCubit.list.length,
                      itemBuilder: (context, index) {
                        final todo = _toDoCubit.list[index];
                        return buildItem(todo);
                      }
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
  Widget buildItem(ToDo toDo) {
    return GestureDetector(
      onTap: () {
        isSelected = toDo;
        _toDoCubit.change(toDo);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: !toDo.isSelected ?  Colors.grey.shade300 : Colors.red,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(toDo.Name),
            Text(toDo.Datetime),
          ],
        ),
      ),
    );
  }
}

