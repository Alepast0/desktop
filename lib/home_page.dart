import 'package:flutter/material.dart';
import 'package:untitled1/responsive/desktop.dart';
import 'package:untitled1/responsive/modile.dart';
import 'package:untitled1/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Desktop")),
      ),
      body: const ResponsiveLayout(desktopBody: DesktopBody(), mobileBody: MobileBody()),
    );
  }
}
