import 'package:flutter/material.dart';
import 'package:rosette/secondPage.dart';

void main() => runApp(const MaterialApp(
      home: Bottle(),
      debugShowCheckedModeBanner: false,
    ));
double inc = 1.00;

class Bottle extends StatefulWidget {
  const Bottle({Key? key}) : super(key: key);

  @override
  State<Bottle> createState() => _BottleState();
}

class _BottleState extends State<Bottle> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        '$inc',
                        style: const TextStyle(fontSize: 70),
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
                ],
              ),
            ),
            Positioned(
              top: size.height / 2.5,
              child: Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/water.png'), fit: BoxFit.fill),
                ),
              ),
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
