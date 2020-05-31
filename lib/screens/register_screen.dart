import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/rounded_button.dart';
import 'package:hack_bmg_flutter/screens/home_screen.dart';
import 'package:hack_bmg_flutter/screens/login_screen.dart';
import 'package:hack_bmg_flutter/constants.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegisterScreen extends StatefulWidget {
  static const id = 'RegisterScreen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _registerFormKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmaSenhaController = TextEditingController();

  //final _auth = FirebaseAuth.instance;

  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Form(
                  key: _registerFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset('lib/assets/images/logo.png'),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Nome',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color(0xFFE8E8E8),
                            filled: true,
                          ),
                          controller: _nomeController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o nome';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color(0xFFE8E8E8),
                            filled: true,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o email';
                            } else if (!EmailValidator.validate(value)) {
                              return 'Informe um email válido';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color(0xFFE8E8E8),
                            filled: true,
                          ),
                          obscureText: true,
                          controller: _senhaController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha a senha';
                            } else if (value != _confirmaSenhaController.text) {
                              return 'Senhas diferentes';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        RoundedButtom(
                          color: Colors.orange,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'ENVIAR',
                              style: kTextStyleWhite.copyWith(fontSize: 15.0),
                            ),
                          ),
                          onPress: () async {
                            setState(() {
                              showSpinner = true;
                            });
                            try {
                              // final newUser =
                              //     await _auth.createUserWithEmailAndPassword(
                              //         email: _emailController.text,
                              //         password: _senhaController.text);
                              // if (newUser != null) {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => HomeScreen(
                              //         userName: _nomeController.text,
                              //       ),
                              //     ),
                              //   );
                              //}
                              setState(() {
                                showSpinner = false;
                              });
                            } catch (e) {
                              print(e);
                            }
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Já possui uma conta?',
                          style: kTextStyle.copyWith(
                            fontSize: 20.0,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginScreen.id);
                          },
                          child: Text(
                            'Faça login aqui!',
                            style: kTextStyle.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
