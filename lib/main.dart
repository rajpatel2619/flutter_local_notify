import 'package:flutter/material.dart';
import 'package:flutter_local_notify/home_view.dart';
import 'package:flutter_local_notify/services/notification.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
      providers:[
      ChangeNotifierProvider(create:(_)=>NotificationService())
    ]);
  }
}
