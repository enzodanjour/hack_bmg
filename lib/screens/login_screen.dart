import 'package:flutter/material.dart';

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
      body: Form(
        key: _loginFormKey,
        child:Padding(
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
                  hintText: 'exemplo@gmail.com'
                ),
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value){
                  if(value.isEmpty){
                    return 'Digite um email válido';
                  }else{
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'email',
                  icon: Icon(Icons.lock),
                  hintText: 'Sua senha'
                ),
                obscureText: true,
                controller: _passwordController,
                validator: (value){
                  if(value.isEmpty){
                    return 'Digite uma sena válida';
                  }else{
                    return null;
                  }
                },
              ),
              Container(
                margin: EdgeInsets.only(top:10, bottom: 10),
                child: RaisedButton(
                  child: Text('Login'),
                  color: Theme.of(context).primaryColor,
                  onPressed: () async {
                    if(_loginFormKey.currentState.validate()){
                      try{

                      }catch (e){
                        print('error $e');
                      }
                    }
                  }
                ),
              ),
              Text('Não tem uma conta?'),
              FlatButton(
                child: Text('Cadastre-se aqui!'),
                onPressed: () {
                  //Navigator.push(context, route)
                }
              )
            ],
          ),
        ) 
      ),
    );
  }
}