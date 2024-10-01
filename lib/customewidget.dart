import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Custmwidgeteg extends StatelessWidget {
  final Image img;
  final Text title;
  final Text ? subtitle;
  final Icon ? iconss;
  VoidCallback onpress;
  Custmwidgeteg({required this.img,required this.title, this.iconss,this.subtitle,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(color: Colors.redAccent[100],
        child:Column(
          children: [
        ListTile(
          leading: img,
          title: title,
          subtitle: subtitle,
          trailing: iconss,
          onTap: onpress,
        ),
            Container(child: img,)
        ],
      ),
    )
    );
  }
}
