import 'dart:ui';

import 'package:flutter/material.dart';
import 'ejemplo1.dart';
import 'wrap.dart';
import 'form.dart';
import 'registerForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
        ),
        //fontFamily: 'Nunito',
        useMaterial3: true,
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.blue, iconTheme: IconThemeData(color: Colors.white)),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
          )
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _currentIndex = 0;

  final List<Widget> _pages = [
    LoginForm(),
    RegisterFormPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Register',
          ),
        ],
      ),
    );
  }
}

/*
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        FittedBox(
          child: Row(
            children: [
              Image.network('https://i.pinimg.com/originals/56/29/46/562946ceb3b6e87c376a9c34dc8a136b.gif'),
              Image.network('https://i.pinimg.com/originals/56/29/46/562946ceb3b6e87c376a9c34dc8a136b.gif'),
              Image.network('https://i.pinimg.com/originals/56/29/46/562946ceb3b6e87c376a9c34dc8a136b.gif'),
              Image.network('https://i.pinimg.com/originals/56/29/46/562946ceb3b6e87c376a9c34dc8a136b.gif'),
              Image.asset("assets/gentleman.PNG")
            ],
          ),
        ),
        Row(
        children: [
        Flexible(
          fit: FlexFit.tight,
        flex: 4,
        child: Text("4/8"),
      ),
      Flexible(
        fit: FlexFit.loose,
        flex: 3,
        child: Text("3/8"),
      ),
        Flexible(
          fit: FlexFit.loose,
        flex: 1,
        child: Text("1/8"),
      ),
      ],
        ),
        FractionallyPage(),
        WrapPage(),
        ],
      ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} */