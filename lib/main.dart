import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController age = TextEditingController();
    TextEditingController salary = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employe'),
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(labelText: "Name", hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                controller: age,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Age", hintText: "Age"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                controller: salary,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Salary", hintText: "Salary"),
              ),
            ),
            Center(
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Add Employe")))
          ],
        ),
      ),
    );
  }
}
