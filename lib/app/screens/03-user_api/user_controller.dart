import 'package:app_getx_flutterg57/app/models/user_model.dart';
import 'package:app_getx_flutterg57/app/providers/user_provider.dart';
import 'package:app_getx_flutterg57/app/screens/04-pasar_datos/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final _userProvider = UserProvider();
  List<UserModel> users = [];
  int counter = 0;

  @override
  void onInit() {
    _loadUsers();
    print("User onInit");
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    print("User onReady");
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    print("User onClose");
    // TODO: implement onClose
    super.onClose();
  }

  _loadUsers() async {
    try {
      users = await _userProvider.getUsers();
      update(["users"]);
    } catch (e) {
      print("LoadUser $e");
      Get.snackbar(
        "Error message",
        "Error al consumir API",
        backgroundColor: Colors.blue,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  onFavorites(UserModel userModel) {
    userModel.favorite = !userModel.favorite;
    counter = users.where((userModel) => userModel.favorite == true).length;
    update(["favorite", "counter"]);
  }

  goProfile(UserModel user) {
    Get.to(() => ProfileScreen(), arguments: user);
  }
}
