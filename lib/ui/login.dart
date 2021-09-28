import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void loginFun(){
    setState(() {
      if (_userController
          .toString()
          .isNotEmpty && _passwordController
          .toString()
          .isNotEmpty) {
        Navigator.push(context, CupertinoPageRoute(builder: (_) => App()));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Login Page",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
       child: Column(
         children: [
           Image.asset("Images/logosh.png",height: 90.0,width: 90.0,),
         SizedBox(
           height: 180.0,
           width: 360.0,
           child: Column(
             children: [
               TextField(
                 decoration: const InputDecoration(
                   hintText: "Email",
                   icon: Icon(Icons.email,),
                 ),
                 controller: _userController,
               ),
               TextField(
                 controller: _passwordController,
                 decoration: const InputDecoration(
                   hintText: "Password",
                   icon: Icon(Icons.lock,),
                 ),
                 obscureText: true,
               ),
               const Padding(padding: EdgeInsets.all(8.0),),
               FlatButton(onPressed: (){
                 loginFun();
               }, child: const Text("Login",style: TextStyle(fontWeight: FontWeight.w600,),),color: Colors.blueAccent,),
             ],
           ),
         ),
         ],
       ),
      ),
    );
  }
}
