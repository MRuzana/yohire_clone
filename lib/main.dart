import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yohire/controller/bottom_nav_provider.dart';
import 'package:yohire/views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1A4093)),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
