import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            "assets/logo/logo-login.png",
          ),
          Text(
            "Por favor ingrese con su número de Teléfono",
          ),
          Text(
            "Número HP",
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Cth. 08129011xxxx",
            ),
          ),
          CheckboxListTile(
            value: false,
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
            title: RichText(
              text: TextSpan(
                  text: "Acepto los  ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: "términos, condiciones y privacidad ",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                        children: [
                          TextSpan(
                            text: "de ACME INC. ",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ]),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
