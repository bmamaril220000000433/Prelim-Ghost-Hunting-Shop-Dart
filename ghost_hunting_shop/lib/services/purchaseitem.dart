import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:ghost_hunting_shop/global_providers.dart';
import 'package:ghost_hunting_shop/models/buy.dart';
import 'package:ghost_hunting_shop/models/sell.dart';

class Shop{
  final Ref container;
  String itemName = "Placeholder";
  int quantity = 0;
  Shop(this.container);

void purchase(){
  final inventory = container.read(inventoryProvider);

  print("Items available to purchase \n"
  "[1] Emf \n"
  "[2] Thermometer Gun \n"
  "[3] Spirit Box \n"
  "[4] Parabolic Microphone\n"
  "[5] Photo Camera \n"
  "[6] Video Camera \n"
  "[7] Motion Sensors \n"
  "[8] Glowstick \n"
  "[9] RemPod \n");
  String? choice = stdin.readLineSync();

  print("How many would you like to buy?");
  String? number = stdin.readLineSync();

  if(number != null){
    quantity = int.parse(number);
  }else{
    print("null detected, turning off the shop");
  }

  if(choice == "1"){
    inventory.emf = inventory.emf + quantity;
    itemName = "EMF";
  }else if(choice == "2"){
    inventory.thermometerGun = inventory.thermometerGun + quantity;
    itemName = "Thermogun";
  }else if(choice == "3"){ 
    inventory.spiritBox = inventory.spiritBox + quantity;
    itemName = "Spirit Box";
  }else if(choice == "4"){ 
    inventory.parabolicMicrophone = inventory.parabolicMicrophone + quantity;
    itemName = "Parabolic Microphone";
  }else if(choice == "5"){ 
    inventory.photoCamera = inventory.photoCamera + quantity;
    itemName = "Photo Camera";
  }else if(choice == "6"){
    inventory.videoCamera = inventory.videoCamera + quantity;
    itemName = "Video Camera";
  }else if(choice == "7"){ 
    inventory.motionSensors = inventory.motionSensors + quantity;
    itemName = "Motion Sensors";
  }else if(choice == "8"){ 
    inventory.glowSticks = inventory.glowSticks + quantity;
    itemName = "Glowstick";
  }else if(choice == "9"){ 
    inventory.remPod = inventory.remPod + quantity;
    itemName = "RemPod";
  }else{
    print("Item not available or invalid input");
    return;
  }

  Buy purchased = Buy(itemName, quantity);
  print(purchased.toString());
  }

void sell(){
  final inventory = container.read(inventoryProvider);

  print("Items available to sell \n"
  "[1] Emf \n"
  "[2] Thermometer Gun \n"
  "[3] Spirit Box \n"
  "[4] Parabolic Microphone\n"
  "[5] Photo Camera \n"
  "[6] Video Camera \n"
  "[7] Motion Sensors \n"
  "[8] Glowstick \n"
  "[9] RemPod \n");
  String? choice = stdin.readLineSync();

  print("How many would you like to buy?");
  String? number = stdin.readLineSync();

  if(number != null){
    quantity = int.parse(number);
  }else{
    print("null detected, turning off the shop");
  }

    if(choice == "1"){
    inventory.emf = inventory.emf - quantity;
    itemName = "EMF";
  }else if(choice == "2"){
    inventory.thermometerGun = inventory.thermometerGun - quantity;
    itemName = "Thermogun";
  }else if(choice == "3"){ 
    inventory.spiritBox = inventory.spiritBox - quantity;
    itemName = "Spirit Box";
  }else if(choice == "4"){ 
    inventory.parabolicMicrophone = inventory.parabolicMicrophone - quantity;
    itemName = "Parabolic Microphone";
  }else if(choice == "5"){ 
    inventory.photoCamera = inventory.photoCamera - quantity;
    itemName = "Photo Camera";
  }else if(choice == "6"){
    inventory.videoCamera = inventory.videoCamera - quantity;
    itemName = "Video Camera";
  }else if(choice == "7"){ 
    inventory.motionSensors = inventory.motionSensors - quantity;
    itemName = "Motion Sensors";
  }else if(choice == "8"){ 
    inventory.glowSticks = inventory.glowSticks - quantity;
    itemName = "Glowstick";
  }else if(choice == "9"){ 
    inventory.remPod = inventory.remPod - quantity;
    itemName = "RemPod";
  }else{
    print("Item not available or invalid input");
    return;
  }

  Sell purchased = Sell(itemName, quantity);
  print(purchased.toString());
  }
}