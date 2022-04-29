// TO DO: create the routes by using the original class to set up routes
//    & then change how you're moving from page to page by using routes
//    then finish setting up the other pages (list, preference, notification, your list)

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late TextEditingController _controller;

  // login page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          //color: Colors.pink,
          //padding: EdgeInsets.all(50),
          padding: EdgeInsets.fromLTRB(50, 200, 50, 50),
          child: TextField(
              // controller: _controller,
              ),
        ),
        Container(
          //color: Colors.yellow,
          padding: EdgeInsets.all(50),
          child: TextField(
              // controller: _controller,
              ),
        ),
        FlatButton(
          child: Text('Create an Account'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return CreateUserScreen();
              }),
            );
          },
        ),
        FlatButton(
          child: Text('Login!'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return RepoListScreen();
              }),
            );
          },
        ),
      ]),
    );
  }
}

// create user page
class CreateUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          //color: Colors.pink,
          //padding: EdgeInsets.all(50),
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: TextField(
              // controller: _controller,
              ),
        ),
        Container(
          //color: Colors.yellow,
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: TextField(
              // controller: _controller,
              ),
        ),
        Container(
          //color: Colors.yellow,
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: TextField(
              // controller: _controller,
              ),
        ),
        Container(
          //color: Colors.yellow,
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: TextField(
              // controller: _controller,
              ),
        ),
        Container(
          //color: Colors.yellow,
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: TextField(
              // controller: _controller,
              ),
        ),
        Container(
          //color: Colors.yellow,
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: TextField(
              // controller: _controller,
              ),
        ),
        FlatButton(
          child: Text('Already have an account? Login!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text('Create Account!'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return RepoListScreen();
              }),
            );
          },
        ),
      ]),
    );
  }
}

// repo list page
class RepoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text('Logout!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// repo list page
class PreferencesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text('What do you want to be notified about?'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// repo list page
class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text('You will be notified when done!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// repo list page
class YourReposScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text('Your repos!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
