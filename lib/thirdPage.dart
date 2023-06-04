// ignore: file_names
import 'package:flutter/material.dart';

void firstglass(context) {
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
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              height: size.height * 0.50,
              width: size.width * 1.0,
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
                      ' Customize Your Water Drink Cup',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width * 0.3),
                      Image(
                        image: const AssetImage('assets/jug.png'),
                        height: size.height * 0.08,
                        width: size.width * 0.14,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: size.width * 0.08),
                      SizedBox(
                        width: size.width * 0.2,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          // inputFormatters:  <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      const Text(
                        'ml',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.13,
                  ),
                  Row(
                    children: [
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.43,
                        padding: EdgeInsets.fromLTRB(size.width * 0.1,
                            size.height * 0, size.width * 0, size.height * 0),
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
                      Container(
                        padding: EdgeInsets.fromLTRB(size.width * 0,
                            size.height * 0, size.width * 0.1, size.height * 0),
                        height: size.height * 0.05,
                        width: size.width * 0.43,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor:
                                  const Color.fromARGB(255, 43, 156, 249)),
                          onPressed: () {},
                          child: const Text(
                            "OK",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        );
      });
}
