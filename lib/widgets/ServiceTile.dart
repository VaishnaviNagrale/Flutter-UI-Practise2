import 'package:flutter/material.dart';

class ServiceTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;
  final bool checked;
  final VoidCallback onTileTap;

  const ServiceTile({
    required this.title,
    required this.subtitle,
    required this.index,
    required this.checked,
    required this.onTileTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Material(
        elevation: checked ? 8.0 : 2.0,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: checked ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: CheckboxListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            secondary: Icon(Icons.info),
            controlAffinity: ListTileControlAffinity.leading,
            value: checked,
            onChanged: (value) {
              onTileTap();
            },
            activeColor: Colors.white,
            checkColor: Colors.orange,
          ),
        ),
      ),
    );
  }
}
