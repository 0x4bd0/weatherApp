import 'package:http/http.dart' as http;
import 'package:weatherApp/data/models/weatherModel.dart';


class WeatherRepository {
  
  Future<WeatherModel> getWeather(String city) async{
    
  final res = http.get('api.openweathermap.org/data/2.5/weather?q=$city&appid=704e86b83da7d8f1ac0aaba095d77d91');

  print(res);
  }

}