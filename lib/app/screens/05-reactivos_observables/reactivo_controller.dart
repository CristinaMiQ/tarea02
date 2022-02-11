import 'package:get/get.dart';

class ReactivoController extends GetxController {
  //int counter = 0;

  //Tipos de datos de reactivos
  RxInt counter = RxInt(0);

  //RxInt
  //RxDouble
  //RxBool
  //RxString
  //RxList
  //RxMap

  void increment() {
    counter++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
