import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newthemeproject2/reusable_card.dart';
import 'Constants.dart';

int genderstate=0;
void main() {
  runApp(const BMIapp());
}

class BMIapp extends StatelessWidget {
  const BMIapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        )
      ),
      home: InputPage(),
    );
  }
}
enum Gender{
  Male,
  Female
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  Color Malecolor=inactivecardcolor;
  Color Femalecolor=inactivecardcolor;
  Gender? Selectgender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator BMI"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusablecard(
                    onPress: (){
                      setState((){
                        Selectgender=Gender.Male;
                      });
                    } ,
                    colour: Selectgender==Gender.Male ? Malecolor=activecolor : Femalecolor= inactivecardcolor,
                    cardChild: createnewicon(icon: FontAwesomeIcons.mars,label: "Male"),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    onPress: (){
                      setState((){
                        Selectgender=Gender.Female;
                      });
                    } ,
                    colour: Selectgender==Gender.Female ? Femalecolor=activecolor : Femalecolor= inactivecardcolor,
                    cardChild: createnewicon(icon: FontAwesomeIcons.venus,label: "Female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: inactivecardcolor,
              cardChild: Column(
                children: [
                  Text("HEIGHT",
                  style: labeltextstyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "180",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text("cm")
                      Slider(value: value, onChanged: onChanged)
                    ],
                  ),
                ],
              ),
            ),),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Reusablecard(colour: inactivecardcolor,),
                ),
                Expanded(
                  child: Reusablecard(colour: inactivecardcolor,),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.pinkAccent,
              child: Text(
                  "Calculate",textAlign: TextAlign.center,
              ),
              width: double.infinity,
          ),)
        ],
      ),
    );
  }
}






