import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/flokemons/cart.dart';
import 'package:mcc_lab_23dec23/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(context) {
    // GoogleSignInAPI.initialize();
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: SplashScreen()),
    );
  }
}
