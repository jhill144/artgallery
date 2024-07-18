import 'dart:async';
import 'package:artgallery/utilities/directoryrouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage(
    String s, {
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      context.goNamed(DirectoryRouter.homepage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.blue, Colors.green],
            ),
          ),
          child: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Art Gallery',
                style: TextStyle(fontSize: 50),
              ),
              Icon(
                Icons.art_track,
                size: 70,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
