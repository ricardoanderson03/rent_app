import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = 'John Doe';
  int age = 30;
  String bio =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex vel dui aliquam, non ultricies diam varius.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blue,
              child: Text(
                name[0],
                style: TextStyle(fontSize: 50.0),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Age: $age',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Bio:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              bio,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name = 'Jane Doe';
            age = 35;
            bio =
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus euismod gravida metus, sit amet molestie augue facilisis sit amet.';
          });
        },
        tooltip: 'Update Profile',
        child: Icon(Icons.edit),
      ),
    );
  }
}
