import 'package:app_getx_flutterg57/app/screens/03-user_api/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Users"),
              actions: [
                GetBuilder<UserController>(
                  id: "counter",
                  init: UserController(),
                  builder: (_) {
                    return CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Colors.white,
                      child: Text("${controller.counter}"),
                    );
                  },
                ),
                SizedBox(
                  width: 15.0,
                )
              ],
            ),
            body: GetBuilder<UserController>(
              id: "users",
              builder: (_) {
                return ListView.builder(
                  itemCount: controller.users.length,
                  itemBuilder: (context, index) {
                    final user = controller.users[index];
                    return ListTile(
                      onTap: () {
                        controller.goProfile(user);
                      },
                      title: Text("${user.firstName} - ${user.lastName}"),
                      subtitle: Text("${user.email}"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("${user.avatar}"),
                      ),
                      trailing: GetBuilder<UserController>(
                        id: "favorite",
                        builder: (_) {
                          print("update favorite");
                          return GestureDetector(
                            onTap: () {
                              controller.onFavorites(user);
                            },
                            child: user.favorite
                                ? Icon(Icons.favorite, color: Colors.pink)
                                : Icon(Icons.favorite_outline),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ));
      },
    );
  }
}
