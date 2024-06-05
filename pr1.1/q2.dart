import 'dart:io';

void main() {
  print('Enter the size of an array:');
  int n = int.parse(stdin.readLineSync()??"0");
  List arr = [];

  for (int i = 0; i < n; i++) {
    print('Enter element ${i + 1}:');
    arr.add(int.parse(stdin.readLineSync()??"0"));
  }

  int max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }

  print('largest number is: $max');
}