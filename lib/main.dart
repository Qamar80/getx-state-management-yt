import 'package:flutter/material.dart';
import 'package:getx_state_management/api_screen.dart';
import 'package:getx_state_management/example_three_screen.dart';
import 'package:getx_state_management/example_two_screen.dart';
import 'package:getx_state_management/favourite_screen.dart';
import 'package:getx_state_management/home_screen.dart';
import 'package:getx_state_management/image_picker_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: HomeScreen(),
     // home: ExampleTwoScreen(),
     // home: ExampleThreeScreen(),
     // home: FavouriteScreen(),
     // home: ImagePickerScreen(),
      home: ApiScreen(),
    );
  }
}

