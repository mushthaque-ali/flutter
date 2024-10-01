import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Gridviewcustm(),));
}

class Gridviewcustm extends StatefulWidget {
  const Gridviewcustm({super.key});

  @override
  State<Gridviewcustm> createState() => _GridviewcustmState();
}

class _GridviewcustmState extends State<Gridviewcustm> {
  var color=[Colors.yellow,Colors.red,Colors.green,Colors.purple];
  var iconss=[Icons.account_balance,Icons.add_alert,Icons.access_alarm_rounded,Icons.add_circle,];
  var data=["account_balance","add_alert","access_alarm_rounded","add_circle"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context,index){
          return Card(color: color[index],
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconss[index]),
            Text(data[index],style: GoogleFonts.abrilFatface(
              fontSize: 25
            ),),
    ],
          ),
          )  ;
    },childCount: iconss.length)),
    );
  }
}
