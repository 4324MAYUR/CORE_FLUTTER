 import 'dart:io';
 void main()
 {
  stdout.write("Enter List Size : ");
  int size = int.parse(stdin.readLineSync() ?? "0");

  List<int> l = List.generate(size, (index) 
  {
    stdout.write("Enter Element $index: ");
    return int.parse(stdin.readLineSync() ?? "0");
  });

   int choice = 0;

   do
   {
    print("Press 1 for insert number :");
    print("Press 2 for delete number :");
    print("Press 3 for update number :");
    print("Press 4 for  view  number :");
    print("Press 5 for exit  List    :");
    print(" ");
    stdout.write("Enter your number  :  ");
    int choice = int.parse(stdin.readLineSync() ?? "0");
      
      switch(choice)
      {
        case 1:
        {
          stdout.write("Enter your Index :");
          int index = int.parse(stdin.readLineSync() ?? "0");
          stdout.write("Enter your number :");
          int num = int.parse(stdin.readLineSync() ?? "0");
          l.insert(index, num);
          print("");
          print("New List : $l");      
          break;
        }

        case 2:
        {
          stdout.write("Enter your Index :");
          int index = int.parse(stdin.readLineSync() ?? "0");
          l.removeAt(index);
          print(""); 
           print("New List : $l");      
          break;
        }

         case 3:
        {
          stdout.write("Enter your Index :");
          int index = int.parse(stdin.readLineSync() ?? "0");
          stdout.write("Enter your number :");
          int num = int.parse(stdin.readLineSync() ?? "0");
          l[index] = num;
          print("");
          print("New List : $l");      
          break;
        }

        case 4:
        {
          print("New List :$l");
          break;
        }

         case 5:
        {
          print("!!  ======= Exit =======  !!");
          exit(0);
        }

       default:
       {
        print("Your choice is Invalid .....");
        break;
       } 
      }
   }while(choice != 5);
 
 
 }