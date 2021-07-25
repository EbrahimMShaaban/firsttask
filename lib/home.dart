import 'package:firsttask/txtfield.dart';
import 'package:flutter/material.dart';

import 'Loginbutton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text(' Login Widget')),

      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            SizedBox(height: 50,),
            Center(child: Text(' Login Widget',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),

            SizedBox(height: 50,),
            TxtField(icon1:  Icons.account_circle,scure: false,text: 'Uesr Name',),
            SizedBox(height: 25,),
            TxtField( icon1: Icons.lock,scure: true, text: 'Password',),
            SizedBox(height: 25,),
            IconButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginButon()));
            },

              color: Colors.deepOrange,
              icon:Icon(Icons.login),)





          ],
        ),
      ),
    );
  }
}

