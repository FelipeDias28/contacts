import 'package:contacts/android/styles.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: Scaffold(
        body: Column(
          children: const [
            SizedBox(
              height: 70,
            ),
            Text(
              "Testando a fonte",
            ),
          ],
        ),
      ),
    );
  }
}
