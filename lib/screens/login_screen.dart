import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/screens/home_screen.dart';
import 'package:hack_bmg_flutter/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
            key: _loginFormKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset('lib/assets/images/logo.png'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'email',
                        icon: Icon(Icons.email),
                        hintText: 'exemplo@gmail.com'),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Digite um email válido';
                      } else if (!EmailValidator.validate(value)) {
                        return 'Informe um email válido';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        icon: Icon(Icons.lock),
                        hintText: 'Sua senha'),
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Digite uma sena válida';
                      } else {
                        return null;
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: RaisedButton(
                        splashColor: Colors.orange,
                        child: Text('Login'),
                        color: Colors.grey,
                        onPressed: () async {
                          if (_loginFormKey.currentState.validate()) {
                            try {
                              Navigator.pushNamed(context, HomeScreen.id);
                            } catch (e) {
                              print('error $e');
                            }
                          }
                        }),
                  ),
                  Text('Não tem uma conta?'),
                  FlatButton(
                      child: Text('Cadastre-se aqui!'),
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterScreen.id);
                      })
                ],
              ),
            )),
      ),
    );
  }
}
