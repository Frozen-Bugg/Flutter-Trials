import 'package:flutter/material.dart';
import 'package:meal_app/utils/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool onClick = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            Text(
              'Welcome $name',
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
                  InkWell(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      height: 50,
                      width: onClick ? 50 : 150,
                      child: onClick
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(onClick ? 50 : 8)),
                    ),
                    onTap: () async {
                      setState(() {
                        onClick = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.HomePage);
                    },
                  )
                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.HomePage);
                  //     },
                  //     child: Text('Login'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
