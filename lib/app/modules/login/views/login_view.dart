import 'package:flutter/gestures.dart';
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
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                      text: "Acepto los  ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        // refactor
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Términos");
                            },
                          text: "términos",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Condiciones");
                            },
                          text: ", condiciones ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Privacidad");
                            },
                          text: "y privacidad ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: "de uso. ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "INGRESAR",
              style: TextStyle(
                color: Color(0xFF747D8C),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300],
            ),
          ),
          Center(
            child: Text("O inicia sesión usando"),
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset("assets/icons/facebook-icons.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Facebook",
                      style: TextStyle(
                        color: Color(0xFF3B5998),
                      ),
                    ),
                  ],
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0)),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF3B5998),
                      ),
                    )),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset("assets/icons/twitter-icons.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Twitter",
                      style: TextStyle(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ],
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0)),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
