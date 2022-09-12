import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Por favor ingrese con su número de Teléfono",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Número HP",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.phoneController,
              autocorrect: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "CL. +56 9 12345xxxx",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.checkBox.value,
                    onChanged: (value) => controller.checkBox.toggle(),
                  ),
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
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "INGRESAR",
                style: TextStyle(
                  color: Color(0xFF747D8C),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("O inicia sesión usando"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      fixedSize: MaterialStateProperty.all(
                        Size(150, 50),
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      fixedSize: MaterialStateProperty.all(
                        Size(150, 50),
                      ),
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
      ),
    );
  }
}
