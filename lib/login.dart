import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/login.png", fit: BoxFit.cover),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter username', labelText: 'Username'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Password', labelText: 'Password'),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Login'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
