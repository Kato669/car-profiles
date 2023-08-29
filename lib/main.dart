import 'package:flutter/material.dart';
import 'reusedContainer.dart';

void main() => (runApp( const MyApp()));

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List<Car> car = [
      Car(engine: '123A', colour: 'yellow', numbr: 'UAB 234'),
      Car(colour: 'White', engine: 'WA123', numbr: 'UAW 321'),
      Car(colour: 'Green', engine: 'YU234', numbr: 'UBW 123'),
      Car(numbr: 'UED 901', engine: 'NU234',  colour: 'blue'),
      Car(engine: 'BYE321', colour: 'Grey', numbr: 'UBF 432'),
     ];
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 40, 40),
        appBar: AppBar(
          title: const Text('FaceBook'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: car.map((a) => Text(
              'Engine: ${a.carEngine} colour: ${a.color} and Number plate is ${a.carNumber}')).toList(),
            
          ),
        ),
      )),
    );
  }
}
