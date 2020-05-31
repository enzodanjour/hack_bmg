import 'package:flutter/material.dart';
import 'package:hack_bmg_flutter/components/objectives_list.dart';
import 'package:hack_bmg_flutter/components/rounded_button.dart';
import 'package:hack_bmg_flutter/constants.dart';
import 'package:hack_bmg_flutter/models/data_provider.dart';

class ObjectivesScreen extends StatelessWidget {
  static const id = 'ObjectivesScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 40.0,
              right: 40.0,
              left: 40.0,
              bottom: 10.0,
            ),
            color: Colors.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 50.0,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset('lib/assets/images/logo_white.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Seus objetivos',
                    textAlign: TextAlign.left,
                    style: kTextStyleWhite.copyWith(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ObjectivesList(
                        isFull: true,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedButtom(
                      color: Color(0xFFCCCCCC),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Adicionar objetivo',
                              style: kTextStyleWhite.copyWith(
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      onPress: () {
                        showDialog(
                          context: context,
                          child: AddGoal(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddGoal extends StatelessWidget {
  String oName;
  double oValue;
  IconData oIcon;
  Color oColor;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 0.0,
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.clear,
                  size: 30.0,
                  color: Color(0xFF888888),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Nome do objetivo',
                style: kTextStyle.copyWith(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  hintText: '',
                  hintStyle: kTextStyle.copyWith(
                    color: Color(0xFF888888),
                    fontWeight: FontWeight.w700,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Valor para atingir',
                style: kTextStyle.copyWith(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  hintText: 'R\$',
                  hintStyle: kTextStyle.copyWith(
                    color: Color(0xFF888888),
                    fontWeight: FontWeight.w700,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Escolha um ícone',
                style: kTextStyle.copyWith(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  hintText: '',
                  hintStyle: kTextStyle.copyWith(
                    color: Color(0xFF888888),
                    fontWeight: FontWeight.w700,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Escolha uma cor',
                style: kTextStyle.copyWith(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 75,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: (context, index) {
                    final color = kColorsList[index];
                    return ColorTile(
                      color: color,
                      selectedColor: oColor,
                    );
                  },
                  itemCount: kColorsList.length,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RoundedButtom(
                color: Colors.orange,
                child: Text(
                  'Adicionar',
                  style: kTextStyleWhite.copyWith(fontSize: 20.0),
                ),
                onPress: () {
                  DataProvider().addObjective(
                    icon: oIcon,
                    label: oName,
                    color: oColor,
                    value: oValue,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ColorTile extends StatefulWidget {
  ColorTile({this.color, this.selectedColor});

  final Color color;
  final Color selectedColor;

  bool isSelected = false;

  @override
  _ColorTileState createState() => _ColorTileState();
}

class _ColorTileState extends State<ColorTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected =
              widget.color == widget.selectedColor ? true : false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: widget.isSelected
            ? Icon(
                Icons.check,
                size: 20.0,
                color: Colors.white,
              )
            : SizedBox(),
      ),
    );
  }
}
