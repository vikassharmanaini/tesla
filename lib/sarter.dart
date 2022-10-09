import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tesla_app/homepage.dart';

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  List<IconData> id = [
    Icons.offline_bolt_outlined,
    Icons.safety_check,
    Icons.offline_pin_outlined
  ];
  IconData _ic = Icons.offline_bolt_outlined;

  @override
  Widget build(BuildContext context) {
    IconData ic = id.elementAt(0);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/start.jpg"),
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.6),
              child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      _ic = id.elementAt(1);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => MyhomePage()));
                    });
                  },
                  child: Icon(
                    _ic,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 50,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
