import 'dart:io';

class prodect 
{
  dynamic  addproduct(int id)
  {
    if(id != 0) 
    {
      print("\nCategories:\n");
      print("[1]... Fruits");
      print("[2]... Vegetables");
      print("[3]... Dairy");
      print("[4]... Beverages\n");

      stdout.write("--> Enter number to view products: ");
      int categoryChoice = int.parse(stdin.readLineSync()!);

      switch (categoryChoice) {
        case 1:
          print("\n[ Products in Fruits ]\n");
          print("[1]... Apple - Price: 100 ");
          print("[2]... Banana - Price: 120 ");
          print("[3]... Orange - Price: 150 ");
          break;
        case 2:
          print("\n[ Products in Vegetables ]\n");
          print("[1]... Carrot - Price: 80 ");
          print("[2]... Tomato - Price: 100 ");
          print("[3]... Spinach - Price: 120 ");
          break;
        case 3:
          print("\n[ Products in Dairy ]\n");
          print("[1]... Milk - Price: 120 ");
          print("[2]... Cheese - Price: 130 ");
          print("[3]... Yogurt - Price: 150 ");
          break;
        case 4:
          print("\n[ Products in Beverages] \n");
          print("[1]... Water - Price: 100 ");
          print("[2]... Juice - Price: 150 ");
          print("[3]... Soda - Price: 200 ");
          break;
        default:
          print("Invalid category choice...");
          return;  
      }

 
      stdout.write("\n--> Enter product number to add: ");
      int productChoice = int.parse(stdin.readLineSync() ?? "0");

      stdout.write("--> Enter product quantity: ");
      int quantity = int.parse(stdin.readLineSync()!);

  }
}
}