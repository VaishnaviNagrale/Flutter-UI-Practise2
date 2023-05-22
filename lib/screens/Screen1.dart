import 'package:flutter/material.dart';
import '../widgets/DetailsCard.dart';
import '../widgets/ServiceTile.dart';
import '../widgets/TableCalender.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<bool> _checkedList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Service',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ServiceTile(
                title: 'Family financial planning',
                subtitle: '1 hour',
                index: 0,
                checked: _checkedList[0],
                onTileTap: () {
                  setState(() {
                    _checkedList[0] = !_checkedList[0];
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ServiceTile(
                title: 'Investment Planning discussion',
                subtitle: '1 hour',
                index: 1,
                checked: _checkedList[1],
                onTileTap: () {
                  setState(() {
                    _checkedList[1] = !_checkedList[1];
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ServiceTile(
                title: 'Introductory personal financial',
                subtitle: '45 minutes',
                index: 2,
                checked: _checkedList[2],
                onTileTap: () {
                  setState(() {
                    _checkedList[2] = !_checkedList[2];
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ServiceTile(
                title: 'Retirement planning',
                subtitle: '45 minutes',
                index: 3,
                checked: _checkedList[3],
                onTileTap: () {
                  setState(() {
                    _checkedList[3] = !_checkedList[3];
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Select Time',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TableCalender(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Add your details',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DetailsCard(),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'By clicking below you agree to these',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Privacy Policies',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: Card(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
