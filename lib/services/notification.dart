import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService extends ChangeNotifier {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  doSomething()async{
    print("clicked");
  }
  //initialization

  Future initialize() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("ic_launcher");
    IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: androidInitializationSettings,
            iOS: iosInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings );
    
    // onSelectNotification:doSomething();
    
  }

  //instant notification
  Future instantNotification() async {
    var android = AndroidNotificationDetails("id", "channel", "description");
    var ios = IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: ios);
    await _flutterLocalNotificationsPlugin.show(
        0, "demo instant notify", "tap to do something", platform,
        payload: "welcome to demo app");

  }

  Future cancelNotification()async{
    await _flutterLocalNotificationsPlugin.cancelAll();
    
  }
  
}
