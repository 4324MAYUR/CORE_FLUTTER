import 'dart:io';

import 'class2.dart';

void main()
{
  prodect p = prodect();
  var choice;
  do
  {
    print("1 press.. add a new costomber :");
    print("2 press.. add a new prodect costomer car's:");
    print("3 press.. exit  :");
    stdout.write("enter your choice :");
    int choice = int.parse(stdin.readLineSync() ?? "0");

    switch(choice)
    {
      case 1:
          {
            stdout.write("enter your costomber id :");
            int id = int.parse(stdin.readLineSync() ?? "0");
            stdout.write("enter your costomber name :");
            String name = stdin.readLineSync() ?? "0";
            stdout.write("enter your contect number :");
            int number = int.parse(stdin.readLineSync() ?? "0");
            // break;

          }
      case 2:
          {
            stdout.write("\n\n--> Enter customer ID to add products: ");
            int id = int.parse(stdin.readLineSync() ?? "0");
            p.addproduct(id);
            break;

          }   
    }


  }while(choice != 4);

}