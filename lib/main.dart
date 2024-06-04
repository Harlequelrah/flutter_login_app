import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const Color scarletRed = Color(0xFFFF2400); // Rouge écarlate

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
          title: Text(
            widget.title,
          ),
          centerTitle: true,
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
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    "BIENVENUE SUR NOTRE PAGE DE CONNEXION",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      background: Paint()..color = Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 55,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                            height: 50,
                            child: TextField(
                              style: TextStyle(color:Theme.of(context).colorScheme.primary),
                              decoration: InputDecoration(
                                labelText: "Email",
                                // labelStyle: TextStyle(color:Theme.of(context).colorScheme.secondary),
                                hintText: "Entrer votre email (e.g:usernames@example.com)",
                                // hintStyle: TextStyle(color:Colors.purple),
                                 filled: true, // Activer le remplissage du champ
                                fillColor: Theme.of(context).colorScheme.inversePrimary,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.amber),
                                ),
                              ),
                            )),
                      )
                    ])),
              ],
            ),
          ),
        ));
  }
}
