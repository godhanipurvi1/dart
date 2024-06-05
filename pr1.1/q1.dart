import 'dart:io';

void main() {
  print("Enter the array size:");
  int n = int.parse(stdin.readLineSync()??"0");
  List<int> arr = [];

  for (int i = 0; i < n; i++) {
    print('Enter element ${i + 1}:');
    arr.add(int.parse(stdin.readLineSync()??"0"));
  }

  print("Negative numbers :");
  for (int i = 0; i < n; i++) {
    if (arr[i] < 0) {
      print(arr[i]);
    }
  }
}