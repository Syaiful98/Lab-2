import 'package:flutter/material.dart';
import 'registerpage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emcontroller = TextEditingController();
  String email = "";
  TextEditingController _pscontroller = TextEditingController();
  String pass = "";
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SleepBox2U',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Login'),
              backgroundColor: Colors.blue[900],
            ),
            body: Center(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        scale: 1.2,
                      ),
                      TextField(
                          controller: _emcontroller,
                          decoration: InputDecoration(
                            labelText: 'Email',
                          )),
                      TextField(
                        controller: _pscontroller,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (bool value) {
                              _onChange(value);
                            },
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        minWidth: 300,
                        height: 50,
                        child: Text('Login'),
                        color: Colors.blue[900],
                        textColor: Colors.white,
                        elevation: 20,
                        onPressed: _onPress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: _onRegister,
                        child: Text('Register New Account',
                            style: TextStyle(fontSize: 16)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: _onForgot,
                        child: Text('Forgot password',
                            style: TextStyle(fontSize: 16)),
                      )
                    ]),
              ),
            ))));
  }

  void _onPress() {
    print('Press');
  }

  void _onRegister() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  void _onForgot() {
    print('Forgot');
  }

  void _onChange(bool value) {
    setState(() {
      _rememberMe = value;
    });
  }
}
