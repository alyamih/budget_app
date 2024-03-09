import 'package:budget_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ESavingsType {
  dontSave("I don’t save money"),
  putting10("I’m putting off 10%"),
  puttingMore("I’m putting off more than10%");

  const ESavingsType(this.text);
  final String text;
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<ESavingsType> savingsType = [
    ESavingsType.dontSave,
    ESavingsType.putting10,
    ESavingsType.puttingMore
  ];
  ESavingsType selected = ESavingsType.dontSave;
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252730),
      body: currentPage == 0
          ? SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 65, bottom: 42),
                      child: Container(
                        height: 240,
                        width: 240,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('assets/main_icon.png'))),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Text(
                          'Your financial independence',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white,
                              fontSize: 32,
                              height: 36 / 32,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        'We will help you accumulate a financial cushion without any problems',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 140, 0, 34),
                        child: InkWell(
                          onTap: () {
                            currentPage = 1;
                            setState(() {});
                          },
                          child: Container(
                              width: double.infinity,
                              height: 48,
                              padding: const EdgeInsets.only(top: 13),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF7082E1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text(
                                'Next',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),
                      Text(
                        'Terms of Use | Privacy Policy',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 11,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  )
                ]))
          : Column(
              children: [
                Expanded(
                    child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 65, left: 20, right: 20),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              'How much money do you save?',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: getSavingsType(),
                  )
                ])),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 34),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const HomePage()),
                      );
                    },
                    child: Container(
                        width: double.infinity,
                        height: 48,
                        padding: const EdgeInsets.only(top: 13),
                        decoration: BoxDecoration(
                            color: const Color(0xFF7082E1),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ],
            ),
    );
  }

  Widget getSavingsType() {
    List<Widget> list = [];
    for (var savings in savingsType) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            selected = savings;
            setState(() {});
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFF2E313C),
                borderRadius: BorderRadius.circular(8),
                border: selected == savings
                    ? Border.all(
                        color: const Color(
                          0xFF7082E1,
                        ),
                        width: 1)
                    : null),
            child: Text(
              savings.text,
              style: const TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }
}
