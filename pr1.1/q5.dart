+import 'dart:io';

void main() {
  List A = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
    List B = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
    List C = [[0, 0, 0], [0, 0, 0], [0, 0, 0]];

  
  while (true) {
    print("Operations:");
    print("1. Sum of all elements");
    print("2. Sum of specific Row");
     print("3. Sum of specific Column");
    print("4. Sum of diagonal elements");
    print("5. Sum of antidiagonal elements");
    print("0. Exit");

   
  print("Enter your choice: ");
    int choice= int.parse(stdin.readLineSync()??"0");


    switch (choice) {
      case 1:
        for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            C[i][j] = A[i][j] + B[i][j];
        }
    }

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          //  print("${C[i][j]} ");
        }
        print("\n");
    }
    
    print("Matrix A:");
    print(A);

    print("Matrix B:");
    print(B);

    print("Result of addition:");
    print(C);

        break;
      case 2:
        int row = getIntInput("Select a row (0-2): ");
        if (row < 0 || row > 2) {
          print("Invalid row selection. Please select a row between 0 and 2.");
          continue;
        }
        print("Sum of specific Row: ${resultMatrix[row].fold(0, (sum, element) => sum + element)}");
        break;
      case 0:
        print("Exiting...");
        return;
      default:
        print("Invalid choice");
    }
  }
}
int getIntInput(String prompt) {
  while (true) {
    stdout.write(prompt);
    try {
      return int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Invalid input. Please enter a valid integer.");
    }
  }
}
int sumOfSpecificRow(List matrix, int row) {
  int sum = 0;
  for (int j = 0; j < 3; j++) {
    sum += matrix[row][j];
  }
  return sum;
}

