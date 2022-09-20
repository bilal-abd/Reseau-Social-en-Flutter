import 'package:flutter_application_1/pages/profil/profilcontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class ProfilControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilController>(() => ProfilController());
  }
}
