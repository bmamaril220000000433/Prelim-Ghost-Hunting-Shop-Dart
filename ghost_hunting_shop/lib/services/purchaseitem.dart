import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:ghost_hunting_shop/services/inventory.dart';
import 'package:ghost_hunting_shop/models/buy.dart';

class Shop{
  final Ref container;
  String itemName = "Placeholder";
  int quantity = 0;
  final Inventory inventory;

  Shop(this.container, this.inventory);

void purchase(){
  print("Items available to purchase \n"
  "[1] Emf \n"
  "[2] Thermometer Gun \n"
  "[3] Spirit Box \n"
  "[4] Motion Camera \n");
  String? choice = stdin.readLineSync();

  print("How many would you like to buy?");
  String? number = stdin.readLineSync();

  if(number != null){
    quantity = int.parse(number);
  }else{
    print("null detected, turning off the shop");
  }

  if(choice == "1"){ // for emf
    inventory.emf = inventory.emf + quantity;
    itemName = "EMF";
  }else if(choice == "2"){ // for thermo
    inventory.thermometerGun = inventory.thermometerGun + quantity;
    itemName = "Thermogun";
  }else if(choice == "3"){ // for spirit box
    inventory.spiritBox = inventory.spiritBox + quantity;
    itemName = "Spirit Box";
  }else if(choice == "4"){ // for motion camera
    inventory.motionCamera = inventory.motionCamera + quantity;
    itemName = "Motion Camera";
  }else{
    print("Item not available or invalid input");
    return;
  }

  Buy purchased = Buy(itemName, quantity);
  print(purchased.toString());
  }
}