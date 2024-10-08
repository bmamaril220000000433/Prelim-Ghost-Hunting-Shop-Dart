import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:ghost_hunting_shop/global_providers.dart';

Future<void> main() async {
  final container = ProviderContainer();
  final allitems = container.read(itemsProvider);
  final shop = container.read(shopProvider);
  

  int checker = 1;
  
  while (checker == 1){
    print("-->Welcome to Ghost Hunters Shop<-- \n"
    "[1] Buy an Equipment \n"
    "[2] Sell an Equipment \n"
    "[3] View all your equipments \n"
    "[0] End");
    String? choose = stdin.readLineSync();
    if(choose == "1"){
    print("Buying which equipment?");
      shop.purchase();
    }else if(choose == "2"){
      print("Selling which equipment?");
      shop.sell();
    }else if(choose == "3"){
      allitems.getAllItems();
      print(">>> Opening Shop in 5 seconds... <<<");
      await Future.delayed(Duration(seconds: 5));
    }else if(choose == "0"){
      print("you exited the shop, goodbye!");
      checker = 0;
    }else{
      print("An error has occured");
      checker = 0;
    }
  }
}