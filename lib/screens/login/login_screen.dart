import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/home_screen.dart';
import 'package:onlineshop/screens/login/components/login_text_form_field.dart';
import 'package:onlineshop/screens/login/register_screen.dart';
import 'package:onlineshop/shared_dart_files/button_type_1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: Theme.of(context).textTheme.headline6,
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ListView(
          children: [
            const LoginTextFormField(
              hintText: 'Email',
              iconData: IconlyBold.message,
            ),
            const SizedBox(
              height: 16,
            ),
            const LoginTextFormField(
              hintText: 'Password',
              iconData: IconlyBold.password,
            ),
            ButtonType1(
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              text: 'Login',
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text(
                'Not registered yet? Create an account now!',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
