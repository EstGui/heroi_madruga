import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/Seu-Madruga-IA.webp'),
              ),
              Text("Herói Madruga",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: "Pacifico",
                      fontWeight: FontWeight.bold)),
              Text(
                "Programador",
                style: TextStyle(
                    fontFamily: 'SourceSans',
                    fontSize: 20,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(children: <Widget>[
                  Icon(Icons.phone, color: Colors.teal),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "+55 11 98563 2451",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans',
                      fontSize: 20.0,
                    ),
                  )
                ]),
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white,
                  margin: EdgeInsets.only(
                      bottom: 45.0, top: 10.0, left: 25, right: 25),
                  child: Row(children: <Widget>[
                    Icon(Icons.email, color: Colors.teal),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "heroimadruga14@aluguel.com",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSans',
                        fontSize: 20.0,
                      ),
                    )
                  ])),
              TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 6, 70, 63)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstRoute()),
                  );
                },
                child: Text(
                  "Experiências",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SourceSans',
                    fontSize: 20.0,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
          ))));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}
