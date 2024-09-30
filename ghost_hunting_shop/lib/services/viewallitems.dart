import 'package:ghost_hunting_shop/global_providers.dart';
import 'package:riverpod/riverpod.dart';

class Allitems{
  final Ref container;

  Allitems(this.container);
  
void getAllItems(){
  final inventory = container.read(inventoryProvider);
  List<String> items = 
  ['EMF: ${inventory.emf}',
  'Thermometer Gun: ${inventory.thermometerGun}, ', 
  'Spirit Box: ${inventory.spiritBox}',
  'Parabolic Microphone: ${inventory.parabolicMicrophone}',
  'Photo Camera: ${inventory.photoCamera}',
  'Video Camera: ${inventory.videoCamera}',
  'Motion Sensors: ${inventory.motionSensors}',
  'Glowsticks: ${inventory.glowSticks}',
  'RemPod: ${inventory.remPod}',];

  print("---------------------------------");
  print("Equipments Owned:");
  for (var items in items){
    print("> $items");
  }
  print("---------------------------------");
}
}