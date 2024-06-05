 import 'dart:io';
import 'dart:math';

void main()
{ 
  
     stdout.write("Enter Your Array Size :" ); 
     int n = int.parse(stdin.readLineSync() ?? "0");
     print("");
     
     List<int> l = List.generate(n, (i)
     {
        stdout.write("Enter Your Element $i =>  ");
        return int.parse(stdin.readLineSync() ?? "0");
     });

    print("---- All Nagative Element -----");
     l.forEach((element)
     {
       if(element<0)
      {
       print("${l.indexOf(element)} ) Negative Elements => $element");
      }
      });  
}