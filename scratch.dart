import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
   String task2Result = await task2();
   task3(task2Result);
//  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String>  task2() async{

   String result ;
  Duration threeSeconds = Duration(seconds: 3);
  await Future.delayed(threeSeconds, () {
    String result = 'task 2';
    print('task2 comp with');
  });
  return result;
}

void task3(String task2data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2data');
}