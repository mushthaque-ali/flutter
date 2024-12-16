import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Ratingbar(),
    debugShowCheckedModeBanner: false,));
}
class Ratingbar extends StatefulWidget {
  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<Ratingbar> {
  int _currentRating = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(6, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentRating = index + 1;
              });
            },
            child: Icon(
              index < _currentRating ? Icons.star : Icons.star_border,
              color: Colors.blue,
              size: 50,
            ),
          );
        }),
      ),
    );
  }
}
