import 'package:flutter/material.dart';
class FractionallyPage extends StatefulWidget {
  const FractionallyPage({super.key});

  @override
  State<FractionallyPage> createState() => _FractionallyPageState();
}

class _FractionallyPageState extends State<FractionallyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              widthFactor: 0.8,
              heightFactor: 0.2,
              child: ElevatedButton(
                  child: Text(
                      "tap",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                  ),
                  onPressed: () {},
            ),
        ),
    ),
    ),
    );
  }
}



/*
class Ejemplopage extends StatefulWidget {
  const FractionallyPage({super.key});

  @override
  State<FractionallyPage> createState() => _EjemplopageState();
}

class _EjemplopageState extends State<FractionallyPage> {
  @override
  Widget build(BuildContext context) {
    child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              widthFactor: 0.8,
              heightFactor: 0.2,
              child: ElevatedButton(
                  child: Text(
                      "tap",
                      style: TextStyle(
                        fontSize: 20,
                      )
                  )
                  onPressed: () {},
            )
        )
    )
    )
  }
}*/
