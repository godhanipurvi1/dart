import 'dart:io';
List<int> l=[];
void create()
{
  print("enter the numer of elemnt:");
  int n=int.parse(stdin.readLineSync()??"0");
  for(int i=0;i<n;i++)
  {
    print('Enter a number:');
        int number = int.parse(stdin.readLineSync()!);
        l.add(number);

  }
  print("$l");
}
void read()
{
  print("List: $l");
}
void update()
{
print("enter a number of the index to update:");
  int updateind=int.parse(stdin.readLineSync()??"0");

  print("enter a number of the element to update:");
  int updateele=int.parse(stdin.readLineSync()??"0");

  l[updateind]=updateele;
}
void delete()
{
  print("enter a number of the index to delete:");
  int deleteind=int.parse(stdin.readLineSync()??"0");
  l.removeAt(deleteind);
  }
void main(){
    int choice=1;
    
    do{
      print("enter 1 for CREAT\nenter 2 for READ\nenter 3 for UPDATE\nenter 4 for DELETE\nenter 5 for EXIT");
      int choice=int.parse(stdin.readLineSync()??"0");

      switch(choice){
        case 1:
        create();
        break;
        case 2:
        read();
        break;
        case 3:
        update()  ;
        break;
        case 4:
        delete();
        break;
        case 5:
        print("exiting....");
        break;
        default:
        print("invalid choice");
        
      }
    } while(choice !=5);

}