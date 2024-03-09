import 'package:budget_app/pages/add_savings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AllHistoryPage extends StatefulWidget {
  const AllHistoryPage({super.key});

  @override
  State<AllHistoryPage> createState() => _AllHistoryPageState();
}

class _AllHistoryPageState extends State<AllHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252730),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 65, 20, 18),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  color: Color(0xFF7082E1),
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF7082E1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'All savings',
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
          child: savings.isEmpty
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
                      'You don’t have history of savings',
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
                  child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: getSavings(),
                )),
        )
      ]),
    );
  }

  Widget getSavings() {
    List<Widget> list = [];
    for (var saving in savings) {
      list.add(
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
              color: const Color(0xFF2E313C),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('MM.dd.yy').format(saving.date!),
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Text',
                    fontSize: 16),
              ),
              Text(
                '${(saving.cost!).toStringAsFixed(0)}\$',
                style: const TextStyle(
                    color: Color(0xFF7082E1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      );
    }
    return Column(
      children: list,
    );
  }
}
