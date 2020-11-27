import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherApp/bloc/bloc/weather_bloc.dart';
import 'package:weatherApp/data/repositories/WeatherRepository.dart';
import 'package:weatherApp/ui/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title : 'Weather App',
    home : BlocProvider(
      create: (context) => WeatherBloc(WeatherRepository()),
      child: HomePage(),
    )
    );
  }
}