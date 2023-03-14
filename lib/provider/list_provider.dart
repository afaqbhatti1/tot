import 'package:flutter/cupertino.dart';
import 'package:todo_list/models/task_model.dart';

class TodoListProvider with ChangeNotifier {
  List<TaskModel> itemList = [];
  void addList(TaskModel item) {
    if (item.detail.isEmpty) {
      return;
    }
    itemList.add(item);

    notifyListeners();
  }

  void removeItem(int index) {
    itemList.removeAt(index);
    notifyListeners();
  }

  void clearList() {
    itemList.clear();
    notifyListeners();
  }

  void checkBoxList(bool value, int index) {
    itemList[index].isChecked = value;
    notifyListeners();
  }

  void updateItem(int index, String? newTitle) {
    itemList[index].detail = newTitle!;
    notifyListeners();
  }
}
