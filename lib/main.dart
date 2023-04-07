import 'package:bri_test_arif_rahman/pages/league_teams_page.dart';
import 'package:bri_test_arif_rahman/provider/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BRI Test Arif Rahman',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LeagueTeamsPage(),
      ),
    );
  }
}
