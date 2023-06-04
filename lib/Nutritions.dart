import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: thirdMain()));

class thirdMain extends StatefulWidget {
  thirdMain({Key? key}) : super(key: key);

  @override
  State<thirdMain> createState() => _thirdMainState();
}

class _thirdMainState extends State<thirdMain> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: 'Good Morning ,',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: '\t\tExample Name',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold))
                  ])),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: RichText(
                    text: TextSpan(
                        text: 'Find,',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: '\ttrack and',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '\t\teat healthy',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 98, 254, 103))),
                      TextSpan(
                          text: '\tfood',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ])),
              ),
              SizedBox(height: 30),
              Container(
                  height: size.height * 0.25,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(154, 214, 242, 89),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 3,
                            color: Color.fromARGB(255, 140, 233, 249),
                            offset: Offset(0, 10))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      height: size.height,
                      width: size.width,
                      child: Stack(
                        children: [
                          Positioned(
                              right: size.width * 0.01,
                              child: Image(
                                image: AssetImage('assets/Burger.png'),
                                fit: BoxFit.contain,
                                height: 145,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      text: '\nARTICLE\n',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(255, 241, 48, 9),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            '\nThe Pros and Cons\nof fastfood',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))
                                  ])),
                              TextButton(
                                  onPressed: (() {}),
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(10.0),
                                      foregroundColor: Colors.black,
                                      backgroundColor: Colors.blue),
                                  child: Text('Read Now >'))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 58, 239, 139),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 140, 233, 249),
                          offset: Offset(0, 10))
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                        child: Image(
                      image: AssetImage(
                        'assets/Subtract.png',
                      ),
                      fit: BoxFit.cover,
                    )),
                    Positioned(
                        top: size.height * 0.025,
                        left: size.width * 0.08,
                        child: Row(
                          children: [
                            Text(
                              'Add your meal \ndetails',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: size.width * 0.16,
                            ),
                            TextButton(
                                onPressed: (() {}),
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(10.0),
                                    foregroundColor: Colors.black,
                                    backgroundColor:
                                        Color.fromARGB(255, 251, 252, 253)),
                                child: Text(
                                  'Add Now >',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 58, 239, 139),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 140, 233, 249),
                          offset: Offset(0, 10))
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                        child: Image(
                      image: AssetImage(
                        'assets/Subtract.png',
                      ),
                      fit: BoxFit.cover,
                    )),
                    Positioned(
                        top: size.height * 0.025,
                        left: size.width * 0.08,
                        child: Row(
                          children: [
                            Text(
                              'Track your \nProgress',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: size.width * 0.22,
                            ),
                            TextButton(
                                onPressed: (() {}),
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(10.0),
                                    foregroundColor: Colors.black,
                                    backgroundColor:
                                        Color.fromARGB(255, 251, 252, 253)),
                                child: Text(
                                  'View Now >',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 58, 239, 139),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 140, 233, 249),
                          offset: Offset(0, 10))
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                        child: Image(
                      image: AssetImage(
                        'assets/Subtract.png',
                      ),
                      fit: BoxFit.cover,
                    )),
                    Positioned(
                        top: size.height * 0.025,
                        left: size.width * 0.08,
                        child: Row(
                          children: [
                            Text(
                              'Manage your \nMedication',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: size.width * 0.18,
                            ),
                            TextButton(
                                onPressed: (() {}),
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(10.0),
                                    foregroundColor: Colors.black,
                                    backgroundColor:
                                        Color.fromARGB(255, 251, 252, 253)),
                                child: Text(
                                  'Manage Now >',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Choose Your Favourites',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
