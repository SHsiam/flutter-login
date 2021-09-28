import 'package:flutter/material.dart';
import 'package:flutter1/ui/login.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "login app",
    home: new Login(),
  )
);
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: const Text("This is siam"),
    );
  }
}

