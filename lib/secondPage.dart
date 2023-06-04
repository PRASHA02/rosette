import 'package:flutter/material.dart';
import 'package:rosette/thirdPage.dart';

// ignore: non_constant_identifier_names
void BottleEditModalBottomSheet(context) {
  Size size = MediaQuery.of(context).size;
  showModalBottomSheet(
      // isDismissible: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(40),
      )),
      context: context,
      builder: (BuildContext buildContext) {
        return Container(
          height: size.height * 0.80,
          width: size.width * 1.0,
          padding: EdgeInsets.only(
              left: size.width * 0.11, right: size.width * 0.11),
          decoration: const BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.1,
              ),
              const Center(
                child: Text(
                  '____',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Center(
                child: Text(
                  ' Select Cup',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      firstglass(context);
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/icon1.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.15,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/icon2.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon 3.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon4.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon5.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon6.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon7.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon8.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon9.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon10.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon11.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/icon12.png'),
                      height: size.height * 0.1,
                      width: size.width * 0.13,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 0,
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                    width: size.width * 0.33,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor:
                              const Color.fromARGB(255, 215, 218, 222)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 43, 156, 249)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.12,
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                    width: size.width * 0.33,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor:
                              const Color.fromARGB(255, 43, 156, 249)),
                      onPressed: () {},
                      child: const Text(
                        "ADD",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      });
}
