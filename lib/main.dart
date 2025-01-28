import 'package:evently/app_theme.dart';
import 'package:evently/screens/create_event_screen.dart';
import 'package:evently/screens/home_screen.dart';
import 'package:evently/screens/login_scree.dart';
import 'package:evently/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EventlyApp());
}

class EventlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScree.routeName: (_) => LoginScree(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        CreateEventScreen.routeName: (_) => CreateEventScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
