import 'main.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:rest_api_example/details.dart';
import 'package:rest_api_example/post_model.dart';

/*
*
*
* function that fetches the repos from api
*
*
*/
Future<List<Repos>> fetchRepos() async {
  // asynchronously getting the data
  final response =
      await http.get(Uri.parse('http://augur.chaoss.io/api/unstable/repos/'));

  // if the data loads correctly
  if (response.statusCode == 200) {
    // parse the json into type Repos
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<Repos>((json) => Repos.fromMap(json)).toList();
  }
  // if the data loads incorrectly
  else {
    throw Exception('Failed to load repos');
  }
}

/*
*
*
* class for the list of repos
*
*
*/
class ReposPage extends State<MyApp> {
  // initializing the state by fetching the repos
  @override
  void initState() {
    super.initState();
    futureRepos = fetchRepos();
  }

  /*
  *
  * variable declaration
  *
  */
  late Future<List<Repos>> futureRepos;
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Repositories');

  /*
  *
  *
  * actual app layout build
  *
  *
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example',
      theme: ThemeData(
        primaryColor: AppColors.darkPurple,
      ),
      /*
      *
      * scaffold: the actual page
      *
      */
      home: Scaffold(
        backgroundColor: AppColors.darkPurple,
        /*
        *
        * appBar
        *
        */
        appBar: AppBar(
          title: customSearchBar,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.darkPurple,
          actions: [
            // search icon
            IconButton(
              onPressed: () {
                // when you press the icon
                setState(() {
                  if (customIcon.icon == Icons.search) {
                    // if it's the search icon
                    customIcon = const Icon(Icons.cancel);
                    customSearchBar = const ListTile(
                      leading: Icon(
                        // move the search icon to the left of app bar
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      ),
                      title: TextField(
                        // search field in app bar
                        decoration: InputDecoration(
                          // hint text
                          hintText: 'type in repo name...',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    customIcon = const Icon(Icons.search);
                    customSearchBar = const Text('Repositories');
                  }
                });
              },
              icon: customIcon,
            )
          ],
          centerTitle: true,
        ),
        /*
        *
        * body of the page
        *
        */
        // it's going to display a list of repos
        body: FutureBuilder<List<Repos>>(
          future: futureRepos,
          builder: (context, snapshot) {
            // while the data is still loading
            if (snapshot.connectionState != ConnectionState.done) {
              // return const Center(child: CircularProgressIndicator());
              return Center(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/olly.png'),
                  ],
                ),
              );
            }
            // display the data when the data is done loading
            else {
              return ListView.builder(
                  // get count of items
                  itemCount: snapshot.data!.length,
                  // build the items
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      // when you tap an item, redirect to dynamic page
                      onTap: () {
                        Navigator.push(
                          context,
                          // send the new page the data for the repo
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(repo: snapshot.data![index]),
                          ),
                        );
                      },
                      /*
                        * the design for each container
                      */
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: AppColors.palePink,
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        /*
                        * the actual content in the divs
                        */
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // repo name
                            Text(
                              snapshot.data![index].repo_name,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.indigoBlue,
                              ),
                            ),
                            const SizedBox(height: 10),
                            // repo_id
                            Text(
                              "${snapshot.data![index].repo_id}",
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                            const SizedBox(height: 10),
                            // description
                            Text(
                              "${snapshot.data![index].description}",
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                            // url
                            Text(
                              snapshot.data![index].url,
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                            // repo_status
                            Text(
                              snapshot.data![index].repo_status,
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                            const SizedBox(height: 10),
                            // commits_all_time
                            Text(
                              "${snapshot.data![index].commits_all_time}",
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                            // issues_all_time
                            Text(
                              "${snapshot.data![index].issues_all_time}",
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                            const SizedBox(height: 10),
                            // rg_name
                            Text(
                              snapshot.data![index].rg_name,
                              style: TextStyle(color: AppColors.indigoBlue),
                            ),
                            // repo_group_id
                            Text(
                              "${snapshot.data![index].repo_group_id}",
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                            // base64_url
                            Text(
                              snapshot.data![index].base64_url,
                              style:
                                  const TextStyle(color: AppColors.indigoBlue),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
