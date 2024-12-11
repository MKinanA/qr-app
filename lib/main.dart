import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:qr_app/ui/home.dart';
import 'package:qr_app/ui/qr_generator_screen.dart';
import 'package:qr_app/ui/qr_scanner_screen.dart';
import 'package:qr_app/ui/splash_screen.dart';

const bool enableDevicePreview = false;

void main() {
  runApp(DevicePreview(
    enabled: enableDevicePreview,
    builder: (context) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
     initialRoute: '/',
     routes: {
      '/': (context) => const SplashScreen(),
      '/home': (context) => const Home(),
      '/generate': (context) => const QrGeneratorScreen(),
      '/scan': (context) => const QrScannerScreen(),
     },
    );
  }
}
