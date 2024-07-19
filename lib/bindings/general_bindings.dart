import 'package:get/get.dart';
import 'package:purchasepoint/data/repositories/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
