import 'package:flutter/material.dart';

class WeatherForm extends StatefulWidget {
  @override
  WeatherFormState createState() {
    return WeatherFormState();
  }
}


class WeatherFormState extends State<WeatherForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
            TextFormField(
               style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
              cursorColor: Colors.red,
                decoration: InputDecoration(
                fillColor : Colors.red,
                icon: Icon(Icons.map),
                hintText: 'Hint Text',
                helperText: 'Helper Text',
                counterText: '0 characters',
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
                ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
                border:  OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
                borderRadius: BorderRadius.circular(25.7),
                ),
              ),
              ),
              FlatButton.icon(onPressed: (){
                print(context);
              }, icon: Icon(Icons.search), label: Text('Search',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,)
        ]
     )
    );
  }
}