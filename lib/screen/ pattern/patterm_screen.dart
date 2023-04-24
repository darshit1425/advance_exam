import 'package:flutter/material.dart';

class Pettern_screen extends StatefulWidget {
  const Pettern_screen({Key? key}) : super(key: key);

  @override
  State<Pettern_screen> createState() => _Pettern_screenState();
}

class _Pettern_screenState extends State<Pettern_screen> {
  void Genrat_method(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    setState(() {
      Start = pattern;
    });
  }

  double Start_value = 1;
  String Start = '1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pattern "),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Slider(
              value: Start_value,
              min: 1,
              max: 10,
              divisions: 9,
              label: Start_value.toInt.toString(),
              onChanged: (value) {
                setState(
                  () {
                    Start_value = value;
                  },
                );
              },
              onChangeEnd: Genrat_method,
            ),
            SizedBox(height: 30),
            Text(
              Start,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
