// http://augur.chaoss.io/api/unstable/repos/

// TO DO:
//  use a for loop to display all of the repos returned from the API
//  find out how to format it well so that the data can have titles/look better

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// loading in the api asynchronously
Future<Repos> fetchRepos() async {
  final response =
      await http.get(Uri.parse('http://augur.chaoss.io/api/unstable/repos/'));

  // If the server did return a 200 OK response, then parse the JSON.
  if (response.statusCode == 200) {
    final jsonresponse = json.decode(response.body);
    return Repos.fromJson(jsonresponse[0]);
  }
  // If the server did not return a 200 OK response, then throw an exception.
  else {
    throw Exception('Failed to load repos');
  }
}

// creating labels for data
class Repos {
  final int repo_id;
  final String repo_name;
  final String description;
  final String url;
  final String repo_status;
  final double commits_all_time;
  final double issues_all_time;
  final String rg_name;
  final int repo_group_id;
  final String base64_url;

  const Repos({
    this.repo_id,
    this.repo_name,
    this.description,
    this.url,
    this.repo_status,
    this.commits_all_time,
    this.issues_all_time,
    this.rg_name,
    this.repo_group_id,
    this.base64_url,
  });

  factory Repos.fromJson(Map<String, dynamic> json) {
    return Repos(
      repo_id: json['repo_id'],
      repo_name: json['repo_name'],
      description: json['description'],
      url: json['url'],
      repo_status: json['repo_status'],
      commits_all_time: json['commits_all_time'],
      issues_all_time: json['issues_all_time'],
      rg_name: json['rg_name'],
      repo_group_id: json['repo_group_id'],
      base64_url: json['base64_url'],
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

// initializing the page, getting the repos
class _MyAppState extends State<MyApp> {
  Future<Repos> futureRepos;

  @override
  void initState() {
    super.initState();
    futureRepos = fetchRepos();
  }

// building what the app actually looks like
  @override
  Widget build(BuildContext context) {
    // the app
    return MaterialApp(
      // title
      title: 'Fetch Data Example',
      // theme
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //
      // page layout
      //
      home: Scaffold(
        // title bar
        appBar: AppBar(
          title: const Text('API Data'),
        ),
        /*


         displaying the data in a column


        */
        body: Column(children: [
          /*
            repo_id
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.repo_id.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            repo_name
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.repo_name);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            url
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.url);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            repo_status
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.repo_status);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            commits_all_time
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.commits_all_time.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            issues_all_time
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.issues_all_time.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            rg_name
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.rg_name);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            repo_group_id
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.repo_group_id.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
          /*
            base64_url
          */
          Container(
            child: FutureBuilder<Repos>(
              future: futureRepos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.base64_url);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
        ]),
      ),
    );
  }
}
