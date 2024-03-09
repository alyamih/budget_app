import 'package:budget_app/model/pillow_item.dart';
import 'package:budget_app/pages/add_expenses_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PillowItem pillow = PillowItem();

enum EMonths {
  months3("3 months"),
  months6("6 months"),
  months12("1 year");

  const EMonths(this.text);
  final String text;
}

class AddPillowPage extends StatefulWidget {
  const AddPillowPage({super.key, required this.isChangePeriod});
  final bool isChangePeriod;

  @override
  State<AddPillowPage> createState() => _AddPillowPageState();
}

class _AddPillowPageState extends State<AddPillowPage> {
  TextEditingController monthlyIncomeController = TextEditingController();
  TextEditingController savingsNowController = TextEditingController();
  List<EMonths> months = [EMonths.months3, EMonths.months6, EMonths.months12];
  EMonths selected = EMonths.months3;
  @override
  void initState() {
    super.initState();
    if (pillow.totalPillow != null) {
      if (pillow.months == EMonths.months3) {
        monthlyIncomeController.text =
            (pillow.totalPillow! / 3).toStringAsFixed(0);
      } else if (pillow.months == EMonths.months6) {
        monthlyIncomeController.text =
            (pillow.totalPillow! / 6).toStringAsFixed(0);
      } else if (pillow.months == EMonths.months12) {
        monthlyIncomeController.text =
            (pillow.totalPillow! / 12).toStringAsFixed(0);
      }
      savingsNowController.text = pillow.accumulated!.toStringAsFixed(0);
      selected = pillow.months!;
    }
  }

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
                'New calculate',
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
              child: Text(
                'Your average monthly income',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: TextField(
                cursorColor: Colors.grey,
                controller: monthlyIncomeController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                style: const TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.25)),
                  filled: true,
                  fillColor: const Color(0xFF2E313C),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (text) {
                  monthlyIncomeController.text = text;
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
              child: Text(
                'How much savings are there now',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: TextField(
                cursorColor: Colors.grey,
                controller: savingsNowController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                style: const TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.25)),
                  filled: true,
                  fillColor: const Color(0xFF2E313C),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (text) {
                  savingsNowController.text = text;
                  setState(() {});
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 8),
              child: Text(
                'How long do you pack a pillow for?',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: getMonths(),
                ))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 34),
          child: InkWell(
            onTap: () {
              if (monthlyIncomeController.text.isNotEmpty &&
                  savingsNowController.text.isNotEmpty) {
                if (selected == EMonths.months3) {
                  pillow.totalPillow =
                      double.parse(monthlyIncomeController.text) * 3;
                } else if (selected == EMonths.months6) {
                  pillow.totalPillow =
                      double.parse(monthlyIncomeController.text) * 6;
                } else if (selected == EMonths.months12) {
                  pillow.totalPillow =
                      double.parse(monthlyIncomeController.text) * 12;
                }

                pillow.accumulated = double.parse(savingsNowController.text);
                pillow.months = selected;
                addToSP();
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => AddExpensesPage(
                            isChangePeriod: widget.isChangePeriod,
                            expensesLenght: expenses.length,
                          )),
                );
              }
            },
            child: Container(
                width: double.infinity,
                height: 48,
                padding: const EdgeInsets.only(top: 13),
                decoration: BoxDecoration(
                    color: monthlyIncomeController.text.isEmpty ||
                            savingsNowController.text.isEmpty
                        ? const Color(0xFF3b4265)
                        : const Color(0xFF7082E1),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Calculate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: monthlyIncomeController.text.isEmpty ||
                            savingsNowController.text.isEmpty
                        ? Colors.white.withOpacity(0.3)
                        : Colors.white,
                  ),
                )),
          ),
        ),
      ]),
    );
  }

  Widget getMonths() {
    List<Widget> list = [];
    for (var month in months) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            selected = month;
            setState(() {});
          },
          child: Container(
            width: 108,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFF2E313C),
                borderRadius: BorderRadius.circular(8),
                border: selected == month
                    ? Border.all(
                        color: const Color(
                          0xFF7082E1,
                        ),
                        width: 1)
                    : null),
            child: Text(
              month.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ));
      list.add(const SizedBox(
        width: 8,
      ));
    }
    return Row(
      children: list,
    );
  }
}
