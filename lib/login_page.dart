import 'package:flutter/material.dart';

import 'news_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _loginController;
  late TextEditingController _passwordController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _loginController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
          decoration: BoxDecoration(
              gradient: new LinearGradient(
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                  colors: [const Color(0xffe74249), const Color(0xffbb4e75)])),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                  child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 48),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                          controller: _loginController,
                          decoration: InputDecoration(
                            hintText: 'Nickname',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Required';
                            }
                            if (value.isEmpty ||
                                !RegExp(r"^[a-zA-Z]").hasMatch(value)) {
                              return 'Not Validated';
                            }
                            return null;
                          }),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: Icon(Icons.visibility),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Required';
                          } else if (value.length < 3) {
                            return 'Password should be atleast 3 characters';
                          } else if (value.length > 9) {
                            return 'Password should not be greater than 9 characters';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Container(
                      width: 268,
                      height: 53,
                      child: RaisedButton(
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewsPage()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                  begin: FractionalOffset.topRight,
                                  end: FractionalOffset.bottomLeft,
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp,
                                  colors: [
                                    const Color(0xffe74249),
                                    const Color(0xffbb4e75)
                                  ]),
                              borderRadius: BorderRadius.circular(3.0)),
                          child: Container(
                            constraints:
                                BoxConstraints(maxWidth: 268, minHeight: 53),
                            alignment: Alignment.center,
                            child: Text(
                              'Sign in',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Center(
                        child: Text.rich(TextSpan(
                            text: 'Регистрируясь вы принимате наши условия:\n',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'политику использования данных\n',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: 'политику в отношении файлов cookie',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              )
                            ])),
                      ),
                    )
                  ],
                ),
                width: 328,
                height: 376,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0)),
                ),
              )))),
    );
  }
}
