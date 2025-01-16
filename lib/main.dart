import 'package:flutter/material.dart';
import './hal_komputer.dart' as Komputer;
import './hal_radio.dart' as Radio;
import './hal_headset.dart' as Headset;
import './hal_smartphone.dart' as HP;
import 'package:awesome_notifications/awesome_notifications.dart';

void main() {
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'basic_channelDescription',
      ),
    ],
    debug: true,
  );
  runApp(MaterialApp(
    title: "aplikasi winni Tab bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
    controller = TabController(length: 4, vsync: this); // 4 means 4 tabs
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  triggerNotification() {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        title: 'Simple notif',
        body: 'button',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Daftar elektroknik"),
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.computer), text: "Komputer"),
            Tab(icon: Icon(Icons.headset), text: "Headset"),
            Tab(icon: Icon(Icons.radio), text: "Radio"),
            Tab(icon: Icon(Icons.smartphone), text: "Smartphone"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Komputer.Komputer(),
          Headset.Headset(),
          Radio.Radio(),
          HP.SmartPhone(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: triggerNotification,
        child: const Icon(Icons.notifications),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
