import 'package:ghost_hunting_shop/services/inventory.dart';
import 'package:ghost_hunting_shop/services/purchaseitem.dart';
import 'package:ghost_hunting_shop/services/viewallitems.dart';
import 'package:riverpod/riverpod.dart';

final inventoryProvider = Provider<Inventory>((ref) => Inventory());
final shopProvider = Provider((ref) => Shop(ref));
final itemsProvider = Provider((ref) => Allitems(ref));
