import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() => runApp(const MaterialApp(home: thirdMain()));

class thirdMain extends StatefulWidget {
  const thirdMain({Key? key}) : super(key: key);

  @override
  State<thirdMain> createState() => _thirdMainState();
}

class _thirdMainState extends State<thirdMain> {
  final PageController _pagecontroller = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
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
                    text: const TextSpan(
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
              const SizedBox(height: 30),
              Container(
                  height: size.height * 0.25,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(154, 214, 242, 89),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 3,
                            color: Color.fromARGB(255, 140, 233, 249),
                            offset: Offset(0, 10))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      height: size.height,
                      width: size.width,
                      child: Stack(
                        children: [
                          Positioned(
                              right: size.width * 0.01,
                              child: const Image(
                                image: AssetImage('assets/Burger.png'),
                                fit: BoxFit.contain,
                                height: 145,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: const TextSpan(
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
                                      padding: const EdgeInsets.all(10.0),
                                      foregroundColor: Colors.black,
                                      backgroundColor: Colors.blue),
                                  child: const Text('Read Now >'))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 58, 239, 139),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 140, 233, 249),
                          offset: Offset(0, 10))
                    ]),
                child: Stack(
                  children: [
                    const Positioned(
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
                            const Text(
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
                                    padding: const EdgeInsets.all(10.0),
                                    foregroundColor: Colors.black,
                                    backgroundColor: const Color.fromARGB(
                                        255, 251, 252, 253)),
                                child: const Text(
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
              const SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 58, 239, 139),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 140, 233, 249),
                          offset: Offset(0, 10))
                    ]),
                child: Stack(
                  children: [
                    const Positioned(
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
                            const Text(
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
                                    padding: const EdgeInsets.all(10.0),
                                    foregroundColor: Colors.black,
                                    backgroundColor: const Color.fromARGB(
                                        255, 251, 252, 253)),
                                child: const Text(
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
              const SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 58, 239, 139),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 140, 233, 249),
                          offset: Offset(0, 10))
                    ]),
                child: Stack(
                  children: [
                    const Positioned(
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
                            const Text(
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
                                    padding: const EdgeInsets.all(10.0),
                                    foregroundColor: Colors.black,
                                    backgroundColor: const Color.fromARGB(
                                        255, 251, 252, 253)),
                                child: const Text(
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
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Choose Your Favourites',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _pagecontroller,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: const WormEffect(
                        spacing: 8.0,
                        radius: 10.0,
                        dotWidth: 20.0,
                        dotHeight: 12.0,
                        dotColor: Color.fromARGB(255, 162, 173, 182),
                        activeDotColor: Color.fromARGB(196, 28, 79, 37)),
                    onDotClicked: (index) => {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Row(
              //   children: [
              //     PageView(
              //       children: const [
              //         // page1(),
              //         // page2(),
              //         // page 3(),
              //       ],
              //     ),
              //   ],
              // )
              // Row(
              //   children: [
              //     Expanded(
              //       flex: 1,
              //       child: Container(
              //         color: Colors.amber,
              //         height: 100,
              //       ),
              //     ),
              //     Container(
              //       color: Colors.blue,
              //       height: 100,
              //       width: 100,
              //     ),
              //   ],
              // )
            ],
          ),
        )),
      ),
    );
  }
}
