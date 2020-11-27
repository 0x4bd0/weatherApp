import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable{
  dynamic temp;
  dynamic humidity;
  String city;

  WeatherModel({this.temp,this.humidity,this.city});


  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temp: json['main']['temp'],
      humidity: json['main']['humidity'],
      city: json['city'],
    );
  }

  @override
  List<Object> get props => [temp];
}