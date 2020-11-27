import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherApp/data/models/weatherModel.dart';
import 'package:weatherApp/data/repositories/WeatherRepository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;

  WeatherBloc(this.repository) : super(WeatherInitial());
  
  @override
  WeatherState get initialState => WeatherInitial();

  
  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    yield WeatherLoading();

    if(event is GetWeather){
    yield WeatherLoading();

    try{

      final res = await repository.getWeather(event.city);

      print(res);

    }catch(e){
      
     yield WeatherFail('something went wrong.');

    }

    }
  }
}
