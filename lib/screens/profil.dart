import 'package:flutter/material.dart';

class Profilpage extends StatefulWidget {
  const Profilpage({Key? key}) : super(key: key);

  @override
  State<Profilpage> createState() => _ProfilpageState();
}

class _ProfilpageState extends State<Profilpage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
            maxRadius: 50, backgroundImage: AssetImage('assets/logo2.png')),
      ),
    );
  }
}
