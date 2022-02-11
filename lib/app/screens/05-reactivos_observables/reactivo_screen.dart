import 'package:app_getx_flutterg57/app/screens/05-reactivos_observables/reactivo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactivoScreen extends StatelessWidget {
  const ReactivoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactivoController>(
      init: ReactivoController(),
      builder: (_) {
        print("Dibujando");
        return Scaffold(
          appBar: AppBar(
            title: Text("Reactivos"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Obx(
                  () {
                    print("Redibujando solo text");
                    return Text(
                      '${_.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            //onPressed: controller.increment,
            onPressed: () {
              _.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
