// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calculator_app/Calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Containers extends StatelessWidget {
  String title;
  final Color colors;
  String title2;
  final Color colors2;
  String title3;
  final Color colors3;
  String title4;
  final Color colors4;
  Containers(
      {required this.title,
      required this.colors,
      required this.title2,
      required this.colors2,
      required this.title3,
      required this.colors3,
      required this.title4,
      required this.colors4});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromARGB(245, 57, 55, 55),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(40),
                color: colors,
                child: InkWell(
                  onTap: () {
                    Provider.of<Calculator>(context, listen: false)
                        .setValue(title);
                  },
                  child: (CircleAvatar(
                    radius: 40,
                    backgroundColor: colors,
                    child: Center(
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(40),
                color: colors2,
                child: InkWell(
                  onTap: () {
                    Provider.of<Calculator>(context, listen: false)
                        .setValue(title2);
                  },
                  child: (CircleAvatar(
                    radius: 40,
                    backgroundColor: colors2,
                    child: Center(
                      child: Text(
                        title2,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(40),
                color: colors3,
                child: InkWell(
                  onTap: () {
                    Provider.of<Calculator>(context, listen: false)
                        .setValue(title3);
                  },
                  child: (CircleAvatar(
                    radius: 40,
                    backgroundColor: colors3,
                    child: Center(
                      child: Text(
                        title3,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(40),
                color: colors4,
                child: InkWell(
                  onTap: () {
                    Provider.of<Calculator>(context, listen: false)
                        .setValue(title4);
                  },
                  child: (CircleAvatar(
                    radius: 40,
                    backgroundColor: colors4,
                    child: Center(
                      child: Text(
                        title4,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
