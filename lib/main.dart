import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = 'Off';
  bool lightOn = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor:
            // ignore: dead_code
            lightOn ? CupertinoColors.white : CupertinoColors.black,
        child: SizedBox.expand(
          child: CupertinoButton(
            // ignore: prefer_const_constructors
            child: Text(buttonText),
            onPressed: () {
              setState(
                () {
                  lightOn = !lightOn;
                  lightOn ? buttonText = 'Off' : buttonText = 'On';
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
