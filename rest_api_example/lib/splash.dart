import 'package:flutter/material.dart';
import 'package:rest_api_example/repos.dart';
import 'package:splashscreen/splashscreen.dart';

import 'main.dart';

class Splash extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(
      seconds: 6,
      navigateAfterSeconds: ReposPage(),
      title: Text(
        'GeeksForGeeks',
        textScaleFactor: 2,
      ),
      image: Image.network(
          'https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    ));
  }
}
