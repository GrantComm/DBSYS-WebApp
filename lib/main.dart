import 'package:flutter/material.dart';
import './screens/launchScreen.dart';

void main() {
  runApp(const JSGConsultingWebApp());
}

class JSGConsultingWebApp extends StatelessWidget {
  const JSGConsultingWebApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.green[900],
              secondary: Colors.black,
              tertiary: Colors.blueGrey[100]),
          textTheme: TextTheme(
              displayLarge: TextStyle(
                  fontSize: 100,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold),
              displayMedium: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(fontSize: 40, color: Colors.white),
              bodyLarge: TextStyle(
                  fontSize: 100,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              bodySmall: TextStyle(fontSize: 35, color: Colors.blueGrey[100]),
              displaySmall: TextStyle(fontSize: 35, color: Colors.white),
              titleLarge: TextStyle(
                  fontSize: 45,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold))),
      home: LaunchScreen(),
    );
  }
}
