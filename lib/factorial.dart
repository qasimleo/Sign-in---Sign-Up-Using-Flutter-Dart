import 'package:flutter/material.dart';

void main() {
  runApp(fact());
}

class fact extends StatefulWidget {
  const fact({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

int find(var value) {
  var fact = 1;
  for (var i = 2; i <= value; i++) {
    fact *= i;
  }
  return fact;
}

class MyAppState extends State<fact> {
  String data = "";
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculate Factorial'),
          backgroundColor: Colors.yellow.shade900,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('FIND THE FACTORIAL OF A NUMBER',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  width: 250.0,
                  margin: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textController,
                    style: TextStyle(fontSize: 20),
                    decoration:
                        const InputDecoration(hintText: 'Enter A Number'),
                  ),
                ),
                Text(
                  data,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: const Text('FIND'),
                  color: Colors.yellow.shade900,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      var value = int.parse(textController.text);
                      if (value < 0) {
                        data = 'Please a enter a number greater than 0';
                      } else {
                        data = '${textController.text}! = ${find(value)}';
                      }
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
