import 'package:http/http.dart' as http;
import 'package:weatherApp/data/models/weatherModel.dart';
import 'dart:convert';


class WeatherRepository {
  
  Future<WeatherModel> getWeather(String city) async{

  final response = await http.get('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=704e86b83da7d8f1ac0aaba095d77d91');

  print(WeatherModel.fromJson(jsonDecode(response.body)));
  return WeatherModel.fromJson(jsonDecode(response.body));
    
  }

}