import 'package:flutter/material.dart';
import 'package:pruebas/renderizado1/shirt_widget.dart';
import 'package:pruebas/renderizado1/traveling_bag_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Traveling bag"),
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: TravelingBagWidget(
              children: const [
                ShirtWidget(
                  color: Colors.red,
                ),
                ShirtWidget(
                  color: Colors.pink,
                ),
                ShirtWidget(color: Colors.blue),
                ShirtWidget(color: Colors.amber),
                ShirtWidget(color: Colors.brown),
                ShirtWidget(color: Colors.cyanAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
