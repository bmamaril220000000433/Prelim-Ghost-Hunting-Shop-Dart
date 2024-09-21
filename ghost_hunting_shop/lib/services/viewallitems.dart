import 'package:ghost_hunting_shop/services/inventory.dart';
import 'package:riverpod/riverpod.dart';

class Allitems{
  final Ref container;
  final Inventory inventory;

  Allitems(this.container, this.inventory);
  
void getAllItems(){
  List<String> items = 
  ['EMF: ${inventory.emf}', 
  'Thermometer Gun: ${inventory.thermometerGun}, ', 
  'Spirit Box: ${inventory.spiritBox}',
  'Motion Camera: ${inventory.motionCamera}'];

  for (var items in items){
    print(items);
  }
}
}