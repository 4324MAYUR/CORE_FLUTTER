import 'dart:io';
 void main()
{
   stdout.write("Enter Row : ");
  int r = int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter Column : ");
  int c = int.parse(stdin.readLineSync() ?? "0");
  
   print("\n ==== Your matrix input ==== \n\n");
  
  List<List<int>> l = List.generate(r, (index)
  {
    List<int> m = List.generate(c, (Index)
    {
      stdout.write("Enter Element [${index}][${Index}]: ");
      return int.parse(stdin.readLineSync() ?? "0");
    });
    return m;
  });

  int choice ;
  int sum = 0;
   do
  {
    print("press for 1 Sum Of All Element  :");
    print("press for 2 Sum Of Specific Row :");
    print("press for 3 Sum Of specific column:");
    print("press for 4 Sum Of Diagonal Element  :");
    print("press for 5 Sum Of antidiagonal Element  :");
    print("press for 0 Exit List :");
    stdout.write("\n\n Enter your input  => ");
    int choice = int.parse(stdin.readLineSync() ?? "0");



    switch(choice)
    {
      case 1:
      {
        sum=0;
        for(int i = 0; i < r; i++)
      {
         for(int j = 0; j < c; j++)
           {
               sum += l[i][j];
           }
      }
      print("\n \t \t Sum Of  all Element  =>  ${sum}");
      break;
      }

      case 2:
      {
        sum=0;
         
      stdout.write("Enter Row: ");      
      int row = int.parse(stdin.readLineSync() ?? "0");     
       for(int j=0; j < r; j++)
          {
            sum = sum + l[row][j];
          }
        print("sum: $sum\n");
 
      }
      case 3:
      {
        sum = 0;
        stdout.write("Enter column : ");      
        int col = int.parse(stdin.readLineSync() ?? "0");     
          for(int i=0; i < r; i++)
          {
            sum = sum + l[i][col];
          }
        print("sum: $sum\n");
        break;
      }

    case 4:
    {
        sum = 0;
         for(int i=0; i < r; i++)
        {
          for(int j=0; j < r; j++)
          {
            if(i == j)
            {
              sum = sum + l[i][j];
            }
          }
        }
    }

    case 5:
    {
        sum = 0;
        for(int i=0; i < r; i++)
        {
          for(int j=0; j < r; j++)
          {
            if(i+j==r-1)
            {
              sum = sum + l[i][j];
            }
          }
        } 
    }

    case 0:
    {
     print("======= Exit the List =======");
     exit(0);

    }
      default:
        print("==== Invalid input =====");
        break;
    }


  }while(choice!=0); 
}