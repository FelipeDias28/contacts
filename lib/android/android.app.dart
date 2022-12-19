import 'package:contacts/android/styles.dart';
import 'package:flutter/material.dart';

import 'views/home.view.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: const HomeView(),
    );
  }
}
