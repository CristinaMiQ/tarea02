import 'package:app_getx_flutterg57/app/screens/01-contador/contador_controller.dart';
import 'package:app_getx_flutterg57/app/screens/01-contador/contador_screen.dart';
import 'package:app_getx_flutterg57/app/screens/03-user_api/user_screen.dart';
import 'package:app_getx_flutterg57/app/screens/04-pasar_datos/profile_screen.dart';
import 'package:app_getx_flutterg57/app/screens/05-reactivos_observables/reactivo_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady");
    _nextPage();
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }

  _nextPage() {
    Future.delayed(Duration(milliseconds: 300), () {
      //Get.off(() => UserScreen());
      //Get.off(() => ContadorScreen());
      //Get.off(() => ProfileScreen());
      Get.off(() => ReactivoScreen());
    });
  }
}
