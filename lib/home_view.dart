import 'package:flutter/material.dart';
import 'package:flutter_local_notify/services/notification.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<NotificationService>(context, listen: false).initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Consumer<NotificationService>(
          builder: (context, model, _) =>
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: ()=>model.instantNotification(), child: Text("Instant Notification")),
            ElevatedButton(onPressed: () {}, child: Text("Image Notification")),
            ElevatedButton(onPressed: () {}, child: Text("Media Notification")),
            ElevatedButton(
                onPressed: () {}, child: Text("Scheduled Notification")),
            ElevatedButton(
                onPressed: () {}, child: Text("Cancel Notification")),
          ]),
        ),
      )),
    );
  }
}
