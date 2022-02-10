import 'package:flutter/material.dart';
import 'package:process_run/shell.dart';

final shell = Shell();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Button'),
          onPressed: () async {
            try {
              await shell.run(
                'echo Hello',
                onProcess: (p) {},
              );
              // var _dir = Directory('/test_dir');
              // bool _exists = _dir.existsSync();
              // if (!_exists) _dir.createSync();
            } on Exception catch (e) {
              print(e);
            }
          },
        ),
      ),
    );
  }
}
