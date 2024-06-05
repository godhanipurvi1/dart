import 'dart:io';

void main() {
  List arr = [];
  
  print("Enter the array size:");
  int n = int.parse(stdin.readLineSync()??"0");

  for (int i = 0; i < n; i++) {
    print('Enter element ${i + 1}:');
    arr.add(int.parse(stdin.readLineSync()??"0"));
  }

  
    print('1. Insert element');
    print('2. Delete element');
    print('3. Update element');
    print('4. Display elements');

    print('Enter your choice:');
    int choice = int.parse(stdin.readLineSync()??"0");
do{

    switch (choice) {
      case 1:
	print('Enter the element to insert:');
  	int element = int.parse(stdin.readLineSync()??"0");
  	arr.add(element);        
	break;
      case 2:
	print('Enter the element to delete:');
  	int element1 = int.parse(stdin.readLineSync()??"0");
  
         arr.remove(element1);
	break;
      case 3:
        print('Enter the element:');
  	int element3 = int.parse(stdin.readLineSync()??"0");
	print('Enter the index :');
  	int index3 = int.parse(stdin.readLineSync()??"0");
	arr[element3]=(index3);
        break;
      case 4:
        print("$arr");
        break;
      
      default:
        print('Invalid choice. Please try again.');
    }
  }while(choice != 0);
}
