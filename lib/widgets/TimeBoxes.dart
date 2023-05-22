import 'package:flutter/material.dart';

class TimeBoxes extends StatefulWidget {
  const TimeBoxes({Key? key}) : super(key: key);

  @override
  State<TimeBoxes> createState() => _TimeBoxesState();
}

class _TimeBoxesState extends State<TimeBoxes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: GridView.count(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 3,
        children: [
          ColorChangingCard(
            text: '9:00 am',
            checked: false,
          ),
          ColorChangingCard(
            text: '10:00 am',
            checked: false,
          ),
          ColorChangingCard(
            text: '11:00 am',
            checked: false,
          ),
          ColorChangingCard(
            text: '12:00 am',
            checked: false,
          ),
          ColorChangingCard(
            text: '1:00 pm',
            checked: false,
          ),
          ColorChangingCard(
            text: '2:00 pm',
            checked: false,
          ),
          ColorChangingCard(
            text: '3:00 pm',
            checked: false,
          ),
          ColorChangingCard(
            text: '4:00 pm',
            checked: false,
          ),
          ColorChangingCard(
            text: '5:00 pm',
            checked: false,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ColorChangingCard extends StatefulWidget {
  final String text;
  bool checked;
  ColorChangingCard({required this.text, required this.checked});
  @override
  _ColorChangingCardState createState() => _ColorChangingCardState();
}

class _ColorChangingCardState extends State<ColorChangingCard> {
  bool isCardColored = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.checked = !widget.checked;
        });
      },
      child: Card(
        elevation: 4,
        color: widget.checked ? Colors.orange : Color(0xFFD6D8E5),
        child: Center(child: Text(widget.text)),
      ),
    );
  }
}
