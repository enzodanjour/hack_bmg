import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:hack_bmg_flutter/components/accounts_list.dart';
import 'package:hack_bmg_flutter/constants.dart';

class ProfileScreen extends StatefulWidget {
  static const id = 'ProfileScreen';
  

  @override 
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool avancado = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
          child: SafeArea(
            child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[Colors.redAccent,Colors.orangeAccent]
                  )
                ),
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: GFAvatar(
                            backgroundImage: NetworkImage('https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg'),
                            shape: GFAvatarShape.standard,                      
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Maria Conceição Leopoldino', 
                  style: kTextStyle.copyWith(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w400
                  )
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Tipo de experiência', 
                  style: kTextStyle.copyWith(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400
                  )
                ),
              ),
              Container(
                height: 10,
              ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Simples', 
                    style: kTextStyle.copyWith(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400
                    )
                  ),
                  Switch(
                    value: avancado, 
                    onChanged: (value){
                      setState(() {
                        avancado = value;
                      });
                    },
                    activeTrackColor: Colors.orange, 
                    activeColor:Colors.orange,
                  ),
                  Text(
                    'Avançada', 
                    style: kTextStyle.copyWith(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400
                    )
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: avancado ? Text(
                  'No modo avançado você poupa e também investe. Esse modo é indicado para quem deseja aprender a investir o seu dinheiro e aumentar o patrimônio. Invista com baixo ou alto risco.', 
                  style: kTextStyle.copyWith(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w200
                  )
                ) : Text(
                  'No modo simples você apenas poupa o seu dinheiro. Esse modo é indicado para quem deseja aprender a gerir melhor o seu dinheiro, sem nenhum risco.', 
                  style: kTextStyle.copyWith(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w200
                  )
                ), 
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Distribuição do seu dinheiro', 
                  style: kTextStyle.copyWith(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400
                  )
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: Container()),
                  Container(
                    height: 140,
                    width: 71,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      boxShadow: [
                        // to make elevation
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                        ),
                        // to make the coloured border
                        BoxShadow(
                          color: Colors.red[600],
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 126,
                    width: 71,
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                        ),
                        // to make the coloured border
                        BoxShadow(
                          color: Colors.blue[900],
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 104,
                    width: 71,
                    decoration: BoxDecoration(
                      color: Colors.yellow[300],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                        ),
                        // to make the coloured border
                        BoxShadow(
                          color: Colors.yellow[600],
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 70,
                    width: 71,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                        ),
                        // to make the coloured border
                        BoxShadow(
                          color: Colors.grey[800],
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Contas', 
                  style: kTextStyle.copyWith(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400
                  )
                )
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                height: 580,
                width: double.infinity,
                child: AccountList(),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Desempenho', 
                  style: kTextStyle.copyWith(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400
                  )
                )
              ),
              Row(
                children: [ 
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Nivel:', 
                    style: kTextStyle.copyWith(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800
                    )
                  )
                 ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Lendário', 
                      style: kTextStyle.copyWith(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400
                      )
                    )
                  ),
                  Transform.rotate(
                    angle: 90 * 3.14 / 180,
                    child: Icon(
                      Icons.label,
                      color: Colors.blue[900],
                    ),
                  ),                
                ] 
               ),
               Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Uau! Você é uma lenda! Se manteve dentro dos objetivos durante 2 anos e 241 dias.', 
                      style: kTextStyle.copyWith(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400
                      )
                    )
                  ),
              Row(
                children: [ 
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Pontos:', 
                    style: kTextStyle.copyWith(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800
                    )
                  )
                 ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '9860', 
                      style: kTextStyle.copyWith(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400
                      )
                    )
                  ),
                ]
              ),  
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sabia que você pode converter seus pontos em moedas BMG e ter acesso a várias vantagens? Saiba mais', 
                  style: kTextStyle.copyWith(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400
                  )
                ),
              ), 
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                  child: !avancado ? null :
                  Column(
                    children:[ 
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Investimentos', 
                        style: kTextStyle.copyWith(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800
                        
                        )
                      ),
                    ), 
                    Container(
                      height:10.0
                    ),
                    Text(
                      'Você ainda não fez nenhum investimento. Sabia que nós te ensinamos a melhor forma de investir o seu dinheiro? No modo avançado, além de você receber publicações e notificações com dicas de investimento, nós temos a simulação de investimento. Faça o primeiro tutorial, apertando o botão abaixo, e veja como funciona.', 
                      style: kTextStyle.copyWith(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400
                      )
                    )
                  ]
                )
              ),
            ], 
          ),
        ),
      ),
    );
  }
}