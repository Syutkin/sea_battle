import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';

import 'package:sea_battle/screens/battle_screen.dart';
import 'package:sea_battle/screens/home_screen.dart';
import 'package:sea_battle/screens/placement_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Wakelock.enabled;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Морской бой',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomePage(title: 'Морской бой начало'),
        '/placement': (context) => PlacementScreen(),
        '/battle': (context) => BattleScreen(),
      },
      initialRoute: '/',
      // home: HomePage(title: 'Морской бой начало'),
    );
  }
}
