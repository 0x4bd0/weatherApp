import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherApp/bloc/bloc/weather_bloc.dart';
import 'package:weatherApp/ui/form.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if(state is WeatherLoading){
                return  Text('Loading');
              } else if( state is  WeatherInitial){
                 return  WeatherForm();
              } 
            },
          ),
        ));
  }
}
