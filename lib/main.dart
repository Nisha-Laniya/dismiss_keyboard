import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KeyBoard(),
    );
  }
}

class KeyBoard extends StatelessWidget {
  const KeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Keyboard'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText:'Enter Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                Text('Nisha Patel',style: TextStyle(fontSize: 180),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
