import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/home_screen.dart';
import 'package:onlineshop/screens/login/components/login_text_form_field.dart';
import 'package:onlineshop/screens/login/login_screen.dart';
import 'package:onlineshop/shared_dart_files/button_type_1.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
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
              hintText: 'Name',
              iconData: IconlyBold.profile,
            ),
            const SizedBox(
              height: 16,
            ),
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
              text: 'Register',
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text(
                'Already had an account? Login now!',
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
