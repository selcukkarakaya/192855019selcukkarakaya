import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(Sifremiunuttum());
}

class Sifremiunuttum extends StatelessWidget {
  String email;

  final degerKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: degerKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "e-posta Adresiniz?",
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.greenAccent,
                      child: Text("Şifre Sıfırlama Kodu Gönder"),
                      textColor: Colors.red,
                      onPressed: () {
                        degerKey.currentState.save();
                        Navigator.pushNamed(context, '/');
                        debugPrint(
                            "Belirmiş olduğunuz $email, adresine sifre sıfırlama postası gönderildi.");
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
