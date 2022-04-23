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
              displayLarge:
                  TextStyle(fontSize: 100, color: Colors.green[900]))),
      home: LaunchScreen(),
    );
  }
}
