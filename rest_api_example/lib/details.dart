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
    return Scaffold(
      backgroundColor: AppColors.darkPurple,
      appBar: AppBar(
        title: Text(repo.repo_name),
        backgroundColor: AppColors.darkPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(repo.rg_name),
      ),
    );
  }
}
