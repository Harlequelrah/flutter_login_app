import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const Color scarletRed = Color(0xFFFF2400); // Rouge écarlate
    const Color amberColor = Colors.amber; // Ambre
    return MaterialApp(
      title: 'My flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: scarletRed),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My flutter Login App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isObscure = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title,),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    "assets/login_icon.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
