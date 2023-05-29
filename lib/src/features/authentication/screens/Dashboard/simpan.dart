import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class simpan extends StatefulWidget {
  const simpan({super.key});

  @override
  State<simpan> createState() => _simpanState();
}

class _simpanState extends State<simpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('history'),
        ),
        body: Center(
          child: Text(
            'history',
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}
