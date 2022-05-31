import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ics/pages/home_page.dart';
import 'package:ics/providers/listen_tapbar.dart';
import 'package:ics/providers/restaurant_data_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ListenTabBar()),
        ChangeNotifierProvider(create: (context) => RestaurantDataProvider()),
      ],
      child: MaterialApp(
        title: 'ICS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const Home(),
      ),
    );
  }
}
