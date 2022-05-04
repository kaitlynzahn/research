/*
*
* References:
*
* https://www.codewithflutter.com/flutter-fetch-data-from-api-rest-api-example/
* https://blog.logrocket.com/how-to-create-search-bar-flutter/
* https://docs.flutter.dev/cookbook/navigation/passing-data
*
*/

/*
*
* TO DO:
 __ create a login (use github)
      https://medium.com/@dotronglong/sign-in-with-github-in-flutter-8649ab78f5d6
      https://github.com/settings/applications/new
 __ design changes
 X  make each div clickable
 __ add preferences to clickable divs
 __ splash screen
    https://www.geeksforgeeks.org/splash-screen-in-flutter/
    https://www.youtube.com/watch?v=XXISgdYHdYw&t=162s
*
*
* FUTURE WORK:
 __ make search bar actually work
 __ push notifications for changes
      https://medium.com/@aruny3/how-to-use-changenotifier-in-flutter-440371617b8c
 __ local storage to allow user to favorite repo changes
 __ paginate results
      https://www.kindacode.com/article/flutter-listview-pagination-load-more/#The_Code
*
*/

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:rest_api_example/post_model.dart';
import 'package:rest_api_example/details.dart';
import 'package:rest_api_example/repos.dart';
import 'package:rest_api_example/splash.dart';

/*
*
*
* run the app MyApp by calling the class repospage() to create a repospage
*
*
*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  ReposPage createState() => ReposPage();
}
