import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsCardTexts(
          text1: 'Name',
          text2: 'Bettie Morton',
        ),
        DetailsCardTexts(
          text1: 'Email',
          text2: 'bettie.morton@gmail.com',
        ),
        DetailsCardTexts(
          text1: 'Phone',
          text2: '+1 212-284-1500',
        ),
        Card(
          color: Color(0xFFD6D8E5),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please let us konw if you have any special requests',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            leading: Icon(Icons.question_mark_rounded),
          ),
        ),
      ],
    );
  }
}

class DetailsCardTexts extends StatelessWidget {
  final String text1;
  final String text2;

  const DetailsCardTexts({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFD6D8E5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text1),
            Text(text2),
          ],
        ),
      ),
    );
  }
}
