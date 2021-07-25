import 'package:flutter/material.dart';
class TxtField extends StatelessWidget {
  IconData icon1;
  bool ?scure;
  String ?text;
  TxtField({
    this.text,

    this.icon1 =Icons.hourglass_empty,

    this.scure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(style: TextStyle(color: Colors.black,),
       
        obscureText: true,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon1,
            size: 25,
            color: Colors.grey,
          ),

          labelText: text,

          labelStyle: TextStyle(fontSize: 18,
            color: Colors.deepOrange,
          ),
          helperText: 'required',
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
