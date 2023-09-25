

import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:rosette/secondPage.dart';
import 'package:rosette/widget/water_effect.dart';

void main() => runApp(const MaterialApp(
      home: Bottle(),
      debugShowCheckedModeBanner: false,
    ));

class Bottle extends StatefulWidget {
  const Bottle({Key? key}) : super(key: key);

  @override
  State<Bottle> createState() => _BottleState();
}

class _BottleState extends State<Bottle> {
  String currentTime = '';
  double count= 1.00;
  int i=0;
  DateTime now = DateTime.now();
  String formattedDate = DateFormat.Hm().format(DateTime.now());
  //time in h and m
  @override
  void initState() {
    super.initState();
    // Update the current time every second
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        DateTime now = DateTime.now();
        int hour = now.hour;
        int minute = now.minute;
        currentTime = '$hour H:$minute M';
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(children: [
            Positioned(
              top: size.height * 0.15,
              left: size.width * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$count''$i',
                        style: const TextStyle(fontSize: 80),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const Text(
                        'L',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    
                    children: [
                      Text('Next Remainder:',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Text(formattedDate,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const Gap(5),
                  Text(
                      'Current Time: $currentTime',
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        ),
                ],
              ),
            ),
            Positioned(
              top: size.height/100,
              child: WaveBackground(),
            ),
            Positioned(
                top: size.height / 2.0,
                left: size.width / 2.7,
                child: Container(
                  height: size.height / 6,
                  width: size.width / 3.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color.fromRGBO(36, 36, 226, 1),
                  ),
                )),
            Positioned(
                top: size.height / 1.88,
                left: size.width / 2.54,
                child: IconButton(
                  icon: Image.asset('assets/icon2.png'),
                  iconSize: 75,
                  onPressed: () {},
                )),
            Positioned(
              top: size.height / 1.2,
              left: size.width / 4.4,
              child: SizedBox(
                height: size.height / 14,
                width: size.width / 1.8,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    BottleEditModalBottomSheet(context);
                  },
                  child: const Text("+" "  " "DRINK"),
                ),
              ),
            ),
          ])),
    );
  }
}
