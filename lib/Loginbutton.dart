import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginButon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)),
      title:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('text'),
        SizedBox(width: 70
          ,),
        Icon(Icons.account_circle)

        ],),
     // Center(child: const Text('Login')),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text('Are you sure you want to sing in ?'),

          ],
        ),
      ),
      actions: <Widget>[

        InkWell(
          child:TextButton(
            onPressed: (){
              Navigator.of(context).pop();
              final bar =SnackBar(
                content: Expanded(
                  child: Text ('Your Successfully Login'),
                ),
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: (){},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(bar);
            },
            child: Text('OK',
              style: TextStyle(color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,fontSize: 20),),
          ),
        ),
        // TextButton(
        //   child: const Text('ok'),
        //   onPressed: () {
        //     final snackBar = SnackBar(
        //       content: const Text('your successfully login'),
        //
        //     );
        //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //   },
        // ),
        TextButton(
          child: const Text('cancel',style: TextStyle(color: Colors.deepOrange,
              fontWeight: FontWeight.bold,fontSize: 20),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

}

