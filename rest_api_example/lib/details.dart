// https://www.javatpoint.com/flutter-switch

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api_example/post_model.dart';
import 'package:rest_api_example/repos.dart';

class DetailsPage extends StatefulWidget {
  // In the constructor, require a repo to be sent
  DetailsPage({Key? key, required this.repo}) : super(key: key);

  // Declare a field that holds the Todo.
  final Repos repo;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

/*
*
* class that has the details page with states
*
*/
class _DetailsPageState extends State<DetailsPage> {
  /*
  *
  * initializing variables
  *
  */
  bool isSwitched1 = false;
  var textValue1 = 'Do not receive notifications for repo status changes';
  bool isSwitched2 = false;
  var textValue2 = 'Do not receive notifications for commits';
  bool isSwitched3 = false;
  var textValue3 = 'Do not receive notifications for issues';

  /*
  *
  * functions to toggle switches
  *
  */

  /*
  * toggle switch 1
  */
  void toggleSwitch1(bool value) {
    if (isSwitched1 == true) {
      setState(() {
        isSwitched1 = false;
        textValue1 = 'Do not receive notifications for repo status changes';
      });
    } else {
      setState(() {
        isSwitched1 = true;
        textValue1 = 'Receive notifications for repo status changes';
      });
    }
  }

  /*
  * toggle switch 2
  */
  void toggleSwitch2(bool value) {
    if (isSwitched2 == true) {
      setState(() {
        isSwitched2 = false;
        textValue2 = 'Do not receive notifications for commits';
      });
    } else {
      setState(() {
        isSwitched2 = true;
        textValue2 = 'Receive notifications for commits';
      });
    }
  }

  /*
  * toggle switch 3
  */
  void toggleSwitch3(bool value) {
    if (isSwitched3 == true) {
      setState(() {
        isSwitched3 = false;
        textValue3 = 'Do not receive notifications for issues';
      });
    } else {
      setState(() {
        isSwitched3 = true;
        textValue3 = 'Receive notifications for issues';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    /*
    *
    * returning the actual page
    *
    */
    return Scaffold(
        /*
        * page details
        */
        backgroundColor: AppColors.darkPurple,
        /*
        * app bar
        */
        appBar: AppBar(
          title: Text(widget.repo.repo_name),
          backgroundColor: AppColors.darkPurple,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Save",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
        /*
        * actual body of the app
        */
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: const EdgeInsets.all(10.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: AppColors.palePink,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  /*
                  * prompt div
                  */
                  child: Text(
                      "What notifications would you like to recieve for " +
                          widget.repo.repo_name +
                          "?",
                      style: TextStyle(
                          fontSize: 22,
                          color: AppColors.plumPurple,
                          fontWeight: FontWeight.bold))),
              const SizedBox(height: 30),
              /*
              * switch 1
              */
              Text('$textValue1',
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.palePink,
                      fontStyle: FontStyle.italic)),
              Transform.scale(
                  scale: 2,
                  child: Switch(
                    onChanged: toggleSwitch1,
                    value: isSwitched1,
                    activeColor: AppColors.brightPink,
                    activeTrackColor: AppColors.palePink,
                    inactiveThumbColor: AppColors.brightPink,
                    inactiveTrackColor: AppColors.palePink,
                  )),
              Text(
                "Current Repo Status: " + widget.repo.repo_status,
                style: TextStyle(fontSize: 14, color: AppColors.indigoBlue),
              ),
              const SizedBox(height: 60),
              /*
              * switch 2
              */
              Text(
                '$textValue2',
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.palePink,
                    fontStyle: FontStyle.italic),
              ),
              Transform.scale(
                  scale: 2,
                  child: Switch(
                    onChanged: toggleSwitch2,
                    value: isSwitched2,
                    activeColor: AppColors.brightPink,
                    activeTrackColor: AppColors.palePink,
                    inactiveThumbColor: AppColors.brightPink,
                    inactiveTrackColor: AppColors.palePink,
                  )),
              Text(
                "Current Commits all time: " +
                    widget.repo.commits_all_time.toString(),
                style: TextStyle(fontSize: 14, color: AppColors.indigoBlue),
              ),
              const SizedBox(height: 60),
              /*
              * switch 3
              */
              Text(
                '$textValue3',
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.palePink,
                    fontStyle: FontStyle.italic),
              ),
              Transform.scale(
                  scale: 2,
                  child: Switch(
                    onChanged: toggleSwitch3,
                    value: isSwitched3,
                    activeColor: AppColors.brightPink,
                    activeTrackColor: AppColors.palePink,
                    inactiveThumbColor: AppColors.brightPink,
                    inactiveTrackColor: AppColors.palePink,
                  )),
              Text(
                "Current Issues all time: " +
                    widget.repo.issues_all_time.toString(),
                style: TextStyle(fontSize: 14, color: AppColors.indigoBlue),
              ),
            ])));
  }
}
