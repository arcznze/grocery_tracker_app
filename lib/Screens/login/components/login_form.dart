import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../compoents/already_have_an_account.dart';
import '../../../constants.dart';
import '../../Welcome/welcome_screen.dart';

Future<List<dynamic>> getUsers() async {
  final resp =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  if (resp.statusCode == 200) {
    return json.decode(resp.body);
  } else {
    throw Exception("El API no dio 200");
  }
}

void tryLogin(String email, String password, BuildContext ctx) {
  getUsers().then((value) => {
        if (value.any((element) {
          if (!element.containsKey("email") ||
              !element.containsKey("username")) {
            return false;
          }
          return element["email"] == email && element["username"] == password;
        })) // Using username as password
          Navigator.push(
              ctx, MaterialPageRoute(builder: (context) => WelcomeScreen()))
      });
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mailController = TextEditingController();
    final passwordController = TextEditingController();

    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            controller: mailController,
            onSaved: (email) {},
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.yellow), // Change the color of the underline
              ),
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person, color: Colors.yellow),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Colors.yellow), // Change the color of the underline
                ),
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock, color: Colors.yellow),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFFFD24C)),
              ),
              onPressed: () {
                tryLogin(mailController.text, passwordController.text, context);
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return SignUpScreen();
              //     },
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
