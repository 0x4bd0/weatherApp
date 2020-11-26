part of 'weatherbloc_bloc.dart';

@immutable
abstract class WeatherblocState {}

class WeatherblocInitial extends WeatherblocState {
   
}


class WeatherblocLoading extends WeatherblocState {
   
}

class WeatherblocLoaded extends WeatherblocState {
   
}

class WeatherblocSuccess extends WeatherblocState {

  WeatherModel weather;

  WeatherblocSuccess({@required this.weather});

   
}


class WeatherblocError extends WeatherblocState {

  WeatherModel message;

  WeatherblocError({@required this.message});

}

