import 'package:budget_app/model/expense_item.dart';
import 'package:budget_app/pages/add_expenses_page.dart';
import 'package:budget_app/pages/add_pillow.dart';
import 'package:budget_app/pages/add_savings.dart';
import 'package:budget_app/pages/all_history.dart';
import 'package:budget_app/pages/news_page.dart';
import 'package:budget_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ExpenseItem> expenses = [];
  @override
  void initState() {
    super.initState();
    getSP(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252730),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 65, 20, 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const SettingsPage()),
                  );
                },
                child: const Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF7082E1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const NewsPage()),
                  );
                },
                child: const Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF7082E1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const AllHistoryPage()),
                  );
                },
                child: const Text(
                  'All history',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF7082E1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Money Pillow',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Expanded(
          child: pillow.totalPillow == null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'No added info yet',
                        style: TextStyle(
                            color: Color(0xFF7082E1),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                    Text(
                      'You don’t have a calculated\ncushion yet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
                        child: Container(
                          padding: const EdgeInsetsDirectional.all(16),
                          decoration: BoxDecoration(
                              color: const Color(0xFF2E313C),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'You need a financial cushion in',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 22),
                                  child: Text(
                                    '${pillow.totalPillow!.toStringAsFixed(0)}\$',
                                    style: const TextStyle(
                                        color: Color(0xFF7082E1),
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 32),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      pillow.months!.text,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 16),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute<void>(
                                              builder: (BuildContext context) =>
                                                  const AddPillowPage(
                                                    isChangePeriod: true,
                                                  )),
                                        );
                                      },
                                      child: const Text(
                                        'Change period',
                                        style: TextStyle(
                                            color: Color(0xFF7082E1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: const Color(0xFF2E313C),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Already accumulated',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16),
                              ),
                              Text(
                                '${pillow.accumulated!.toStringAsFixed(0)}\$',
                                style: const TextStyle(
                                    color: Color(0xFF7082E1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: const Color(0xFF2E313C),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'It remains to save up',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16),
                              ),
                              Text(
                                '${(pillow.totalPillow! - pillow.accumulated!).toStringAsFixed(0)}\$',
                                style: const TextStyle(
                                    color: Color(0xFF7082E1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 34),
          child: InkWell(
            onTap: () {
              if (pillow.totalPillow != null) {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const AddSavingsPage()),
                );
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const AddPillowPage(
                            isChangePeriod: false,
                          )),
                );
              }
            },
            child: Container(
                width: double.infinity,
                height: 48,
                padding: const EdgeInsets.only(top: 13),
                decoration: BoxDecoration(
                    color: const Color(0xFF7082E1),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  pillow.totalPillow != null
                      ? 'Add financial savings'
                      : 'Calculate',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
