part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();

  @override
  List<Object> get props => [];
}


class WeatherLoading extends WeatherState {
  const WeatherLoading();

  @override
  List<Object> get props => [];
}


class WeatherSuccess extends WeatherState {
  final WeatherModel weather;
  const WeatherSuccess(this.weather);

  @override
  List<Object> get props => [];
}


class WeatherFail extends WeatherState {
  final String message;
  const WeatherFail(this.message);


  @override
  List<Object> get props => [];
}
