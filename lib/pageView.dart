import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class settime extends StatelessWidget {
  const settime({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pageView(),
    );
  }
}

class pageView extends StatefulWidget {
  const pageView({super.key});

  @override
  State<pageView> createState() => _pageView();
}

class _pageView extends State<pageView> {
  final PageController _pagecontroller = PageController(
    initialPage: 0,
    keepPage: true,
  );

  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .13),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * .30),
              SmoothPageIndicator(
                  controller: _pagecontroller,
                  count: 7,
                  effect: SlideEffect(
                      activeDotColor: Colors.blue,
                      dotColor: Colors.black.withOpacity(0.5)))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .70,
            child: PageView(
              onPageChanged: (index) => pageindex = index,
              controller: _pagecontroller,
              children: const [],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .06,
              ),
              Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40))),
                  child: TextButton(
                      onPressed: () {
                        _pagecontroller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      child: const Icon(Icons.arrow_back_ios_new_outlined,
                          color: Colors.blue))),
              SizedBox(
                width: MediaQuery.of(context).size.width * .27,
              ),
              const Text("skip",
                  style: TextStyle(color: Colors.blue, fontSize: 20)),
              SizedBox(
                width: MediaQuery.of(context).size.width * .27,
              ),
              Container(
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (pageindex != 6) {
                            _pagecontroller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear);
                          } else if (pageindex == 6) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const pageView()),
                            );
                          }
                          print(pageindex);
                          // if(_pagecontroller.)
                        });
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
