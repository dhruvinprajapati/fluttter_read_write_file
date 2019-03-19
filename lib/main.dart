import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(
  new MaterialApp(
    title: "file Management",
    home: Home(),
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }

  Future<String> get _localPath async{
    final directory = await getApplicationDocumentsDirectory();
    return directory.path; //Home directory
  }

  Future<File> get _localFile async{
    final path =await _localPath;
    return new File('$path/data.txt');
  }

}