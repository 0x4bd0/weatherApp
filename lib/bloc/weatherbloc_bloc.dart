import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherApp/data/models/weatherModel.dart';
import 'package:weatherApp/data/repositories/WeatherRepository.dart';

part 'weatherbloc_event.dart';
part 'weatherbloc_state.dart';

class WeatherblocBloc extends Bloc<WeatherblocEvent, WeatherblocState> {
  WeatherRepository repository = WeatherRepository();

  WeatherblocBloc() : super(WeatherblocInitial());


  WeatherblocState get initialState => WeatherblocInitial();

  @override
  Stream<WeatherblocState> mapEventToState(
    WeatherblocEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if(event is GetWeatherEvent){
      yield WeatherblocLoading();
      repository.getWeather('algiers');
     // yield WeatherblocSuccess();
    }

  }
}