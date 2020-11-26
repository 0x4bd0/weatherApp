import 'package:flutter/material.dart';
import 'package:weatherApp/bloc/weatherbloc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherApp/ui/form.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: BlocBuilder<WeatherblocBloc, WeatherblocState>(
            builder: (context, state) {
              if(state is WeatherblocLoading){
                return  Text('Loading');
              } else if( state is  WeatherblocInitial){
                 return  WeatherForm();
              } 
            },
          ),
        ));
  }
}
