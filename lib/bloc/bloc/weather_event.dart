part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {
  const WeatherEvent();
}



class GetWeather extends WeatherEvent {
  final String city;

  const GetWeather(this.city);

  @override
  List<Object> get props => [city];
}