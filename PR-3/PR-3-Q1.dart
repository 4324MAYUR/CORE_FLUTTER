import 'dart:io';
 int sum({required int n})
 {
  int total=0;
  for(int i=1;i<=n ;i ++)
  {
    total += i;
  }
  return total;
 }
void main()
{
  stdout.write("\t Enter Your Nuber : ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  int totalsum = sum(n: n);

  print("\n \n \t 1 To ${n} Number Of  Sum => $totalsum");
}