import 'package:flutter/material.dart';
import 'package:weatherApp/bloc/bloc/weather_bloc.dart';
import 'package:weatherApp/data/models/weatherModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayWeather extends StatefulWidget {

  DisplayWeather({Key key}) : super(key: key);

  @override
  _DisplayWeatherState createState() => _DisplayWeatherState();
}

class _DisplayWeatherState extends State<DisplayWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: BlocBuilder<WeatherBloc, WeatherState>(
         builder: (context, state) {
             if( state is  WeatherSuccess){
                 return Center(
                   child: Column(
                     children: [
                       Text('Temp : ${state.weather.temp}'),
                       Text('Humidity : ${state.weather.humidity}'),
                       Text('City : ${state.weather.city}'),
                       FloatingActionButton(onPressed: (){
                         BlocProvider.of<WeatherBloc>(context).add(ShowSearchPage());
                       },child: Icon(Icons.search), )
                     ],
                   ),
                 );
              }
              return Text('N/A');
         },
       )
    );
  }
}