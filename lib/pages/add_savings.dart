import 'package:budget_app/model/saving_item.dart';
import 'package:budget_app/pages/add_expenses_page.dart';
import 'package:budget_app/pages/add_pillow.dart';
import 'package:budget_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

List<SavingItem> savings = [];

class AddSavingsPage extends StatefulWidget {
  const AddSavingsPage({super.key});

  @override
  State<AddSavingsPage> createState() => _AddSavingsPageState();
}

class _AddSavingsPageState extends State<AddSavingsPage> {
  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  final DateTime _selectedDate = DateTime.now();
  DateTime filteredDate = DateTime.now();
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
                'Add savings',
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
                'Date',
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
                controller: dateController,
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
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Dialog(
                                child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: CupertinoDatePicker(
                                    mode: CupertinoDatePickerMode.date,
                                    initialDateTime: _selectedDate,
                                    onDateTimeChanged: (DateTime newDate) {
                                      dateController.text =
                                          DateFormat('MM.dd.yy')
                                              .format(newDate);
                                      filteredDate = newDate;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
              child: Text(
                'The amount of money deposited',
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
                controller: amountController,
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
                  amountController.text = text;
                  setState(() {});
                },
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 34),
          child: InkWell(
            onTap: () {
              if (dateController.text.isNotEmpty &&
                  amountController.text.isNotEmpty) {
                SavingItem saving = SavingItem();
                saving.cost = double.parse(amountController.text);
                saving.date = filteredDate;
                savings.add(saving);
                pillow.accumulated = pillow.accumulated! + saving.cost!;
                addToSP();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage()),
                );
              }
            },
            child: Container(
                width: double.infinity,
                height: 48,
                padding: const EdgeInsets.only(top: 13),
                decoration: BoxDecoration(
                    color: dateController.text.isEmpty ||
                            amountController.text.isEmpty
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
                    color: dateController.text.isEmpty ||
                            amountController.text.isEmpty
                        ? Colors.white.withOpacity(0.3)
                        : Colors.white,
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
