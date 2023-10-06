

import 'package:emergency_ambulance_system/screen/ac_ambulance.dart';
import 'package:emergency_ambulance_system/screen/air_ambulance.dart';

import 'package:emergency_ambulance_system/screen/freezer_ambulance.dart';
import 'package:emergency_ambulance_system/screen/home_page.dart';

import 'package:emergency_ambulance_system/screen/icu_ambulance.dart';
import 'package:emergency_ambulance_system/admin_option.dart';

import 'package:emergency_ambulance_system/widgets/contact_us.dart';
import 'package:emergency_ambulance_system/widgets/contact_view.dart';
import 'package:firebase_core/firebase_core.dart';



import 'package:flutter/material.dart';

import 'demo.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        '/page1': (context) => AcAmbulance(),
        '/page2': (context) => FreezerAmbulance(),
        '/page3': (context) => IcuAmbulance(),
        '/page4': (context) => AirAmbulance(),



      },
    );
  }
}
