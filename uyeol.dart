import 'package:flutter/material.dart';

class Uyeol extends StatelessWidget {
  String sifre;
  String sifrem;
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
                    labelText: ("e-mail"),
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ("Kullanıcı Adı"),
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ("Şifre"),
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    sifre = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ("Şifre Tekrar"),
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    sifrem = value;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: (Colors.greenAccent),
                      child: Text("Vazgeç"),
                      textColor: Colors.red,
                      onPressed: () {
                        debugPrint("Butona Tıklandı");
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                RaisedButton(
                  color: (Colors.greenAccent),
                  child: Text("Kaydol"),
                  textColor: Colors.red,
                  onPressed: () {
                    degerKey.currentState.save();
                    if (sifre == sifrem) {
                      debugPrint("kayıt başarı ile gerçekleşmiştir.");
                      Navigator.pushNamed(context, '/');
                    } else {
                      debugPrint("sifreler eslesmiyor");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
