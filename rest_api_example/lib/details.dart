// https://www.javatpoint.com/flutter-switch

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api_example/post_model.dart';

class DetailsPage extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailsPage({Key? key, required this.repo}) : super(key: key);

  // Declare a field that holds the Todo.
  final Repos repo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    bool isSwitched = false;
    return Scaffold(
        backgroundColor: AppColors.darkPurple,
        appBar: AppBar(
          title: Text(repo.repo_name),
          backgroundColor: AppColors.darkPurple,
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: const EdgeInsets.all(10.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Transform.scale(
                  scale: 2,
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: AppColors.brightPink,
                    activeTrackColor: AppColors.palePink,
                    inactiveThumbColor: AppColors.brightPink,
                    inactiveTrackColor: AppColors.palePink,
                  )),
              Text(
                "Repo Status: " + repo.repo_status,
                style: TextStyle(fontSize: 20, color: AppColors.indigoBlue),
              ),
              const SizedBox(height: 10),
              Transform.scale(
                  scale: 2,
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: AppColors.brightPink,
                    activeTrackColor: AppColors.palePink,
                    inactiveThumbColor: AppColors.brightPink,
                    inactiveTrackColor: AppColors.palePink,
                  )),
              Text(
                "Commits all time: " + repo.commits_all_time.toString(),
                style: TextStyle(fontSize: 20, color: AppColors.indigoBlue),
              ),
              const SizedBox(height: 10),
              Transform.scale(
                  scale: 2,
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: AppColors.brightPink,
                    activeTrackColor: AppColors.palePink,
                    inactiveThumbColor: AppColors.brightPink,
                    inactiveTrackColor: AppColors.palePink,
                  )),
              Text(
                "Issues all time: " + repo.issues_all_time.toString(),
                style: TextStyle(fontSize: 20, color: AppColors.indigoBlue),
              ),
              const SizedBox(height: 10),
            ])));
  }

  void toggleSwitch(bool value) {
    if (value == true) {
      value = false;
    } else {
      value = true;
    }
  }
}
