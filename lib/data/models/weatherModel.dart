import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable{
  final temp;

  WeatherModel({this.temp});

  @override
  List<Object> get props => [temp];
}