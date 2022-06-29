import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Data {
  final String iconUrl;
  final String description;
  final String details;
  final String imageUrl;

  Data(
      {required this.details,
      required this.iconUrl,
      required this.description,
      required this.imageUrl});
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<Data> myData = [
    Data(
        iconUrl: 'assets/images/icon.png',
        description: 'Always Keep Your Body in a good Shape',
        imageUrl: 'assets/images/Stretch-pana.png',
        details:
            'we are proud of you to just thinking of changing your self great step keep going '),
    Data(
        iconUrl: 'assets/images/icon.png',
        description: 'Relaxation Will Give You Mental health',
        imageUrl: 'assets/images/Stretch-bro.png',
        details: 'we will keep you trace your mental health it is our jop'),
    Data(
        iconUrl: 'assets/images/icon.png',
        description: 'AnyWhere AnyTime You Can Do It',
        imageUrl: 'assets/images/Stretch-amico.png',
        details:
            'it would take you five minutes every single day not more for a good fit body and clear mind'),
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (currentIndex < 3) {
        currentIndex++;
        pageController.animateToPage(currentIndex,
            duration: const Duration(seconds: 5), curve: Curves.easeIn);
      }else{
        currentIndex=0;
      }
    });
  }

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(15)),
                child: Builder(builder: (context) {
                  return MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Text(
                      'Skip',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  );
                }),
              )
            ],
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: myData
            .map((item) => MediaQuery.of(context).orientation ==
                    Orientation.portrait
                ? SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 80,
                              width: 80,
                              child:
                                  Image.asset(item.iconUrl, fit: BoxFit.cover)),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                              height: 250,
                              width: 300,
                              child: Image.asset(
                                item.imageUrl,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 60,
                            child: Text(
                              item.description,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            item.details,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DotsIndicator(
                            dotsCount: myData.length,
                            position: currentIndex.toDouble(),
                            decorator: DotsDecorator(
                              activeColor: Colors.teal,
                              size:  Size.square(9.0),
                                activeSize:  Size(18.0, 9.0),
                              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

                          ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(16)),
                            height: 50,
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/login');
                              },
                              child: const Text(
                                'Get Started',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/register');
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.teal, fontSize: 16),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.all(8),
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  height: 60,
                                  width: 90,
                                  child: Image.asset(item.iconUrl,
                                      fit: BoxFit.cover)),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  height: 350,
                                  width: 350,
                                  child: Image.asset(
                                    item.imageUrl,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 60,
                                child: Text(
                                  item.description,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                item.details,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(16)),
                                height: 50,
                                width: double.infinity,
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            .toList(),
      ),
    );
  }
}
