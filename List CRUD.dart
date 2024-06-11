import 'dart:io';
List<int> l=[];
void create()
{
  print("enter the size:");
  int n=int.parse(stdin.readLineSync()??"0");
  for(int i=0;i<n;i++)
  {
    print('Enter a number ${i+1}:');
        int number = int.parse(stdin.readLineSync()!);
        l.add(number);
  }
  print("$l");
}

void read()
  {
    print("List: $l");
  }

int update(int updateind ,int updateele)
  {
    l[updateind]=updateele;
    return updateele;
  }

  
int delete(int deleteind) => l.removeAt(deleteind);

void main(){
    int choice=0;
    
    do{
      print("1 CREAT\n2 READ\n3 UPDATE\n4 DELETE\n5 EXIT");
      int choice=int.parse(stdin.readLineSync()??"0");

      switch(choice){
        case 1:
        create();
        break;

        case 2:
        read();
        break;
        
        case 3:
          print("enter a number of the index to update:");
          int updateind=int.parse(stdin.readLineSync()??"0");

          print("enter a number of the element to update:");
          int updateele=int.parse(stdin.readLineSync()??"0");

          int r=update(updateind ,updateele);

        break;
        case 4:
          print("enter a number of the index to delete:");
          int dind=int.parse(stdin.readLineSync()??"0");

          int r1=delete(dind);

        break;

        case 5:
        print("exiting....");
        break;

        default:
        print("invalid choice");
      }
    }while(choice != 5);
}