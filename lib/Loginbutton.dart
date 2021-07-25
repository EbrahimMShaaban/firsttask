import 'package:flutter/material.dart';
class LoginButon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Login'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text('Are you sure you want to sing in ?'),

          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

}

