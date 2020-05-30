import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const id = 'RegisterScreen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _registerFormKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _emailController =TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmaSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
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
                  TextFormField(
                   decoration: const InputDecoration(
                     icon: Icon(Icons.person),
                     hintText: 'Nome completo',
                     labelText: 'Nome'
                   ),
                   controller: _nomeController,
                   validator: (value){
                     if(value.isEmpty){
                       return 'Preencha o nome';
                     }
                     return null;
                   },
                  ),
                  TextFormField(
                   decoration: const InputDecoration(
                     icon: Icon(Icons.email),
                     hintText: 'Seu email',
                     labelText: 'Email'
                   ),
                   keyboardType: TextInputType.emailAddress,
                   controller: _emailController,
                   validator: (value){
                     if(value.isEmpty){
                       return 'Preencha o email';
                     }
                     else if(!EmailValidator.validate(value)){
                       return 'Informe um email válido';
                     }
                     return null;
                   }
                  ),
                  TextFormField(
                   decoration: const InputDecoration(
                     icon: Icon(Icons.lock),
                     hintText: 'Digite uma senha',
                     labelText: 'Senha'
                   ),
                   obscureText: true,
                   controller: _senhaController,
                   validator: (value){
                     if(value.isEmpty){
                       return 'Preencha a senha';
                     }
                     else if(value != _confirmaSenhaController.text){
                       return 'Senhas diferentes';
                     }
                     return null;
                   },
                  ),
                  TextFormField(
                   decoration: const InputDecoration(
                     icon: Icon(Icons.lock_outline),
                     hintText: 'Repita a senha',
                     labelText: 'Repita a senha'
                   ),
                   obscureText: true,
                   controller: _confirmaSenhaController,
                   validator: (value){
                     if(value.isEmpty){
                       return'Preencha uma senha';
                     }
                     else if(value != _senhaController.text){
                       return 'Senhas diferentes';
                     }
                     return null;
                   },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top:29.0,bottom: 20.0),
                    child: RaisedButton(
                      child: Text('Enviar'),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.black,
                      onPressed: () async{
                        if(_registerFormKey.currentState.validate()){
                          try{  
                            Navigator.pushNamed(context, LoginScreen.id);
                          } catch(e){
                              print('Error Happened: $e');
                          }
                        }
                      }
                    ),
                  ),
                  Text('Já possui uma conta?'),
                  FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, LoginScreen.id);
                   }, 
                    child: Text('Faça login aqui'))
                ],
              ),
              )
            ),
        ),
      ),
    );
  }
}