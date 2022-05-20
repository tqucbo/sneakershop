import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sneaker Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: 'GoogleSans',
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
