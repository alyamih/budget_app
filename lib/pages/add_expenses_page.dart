import 'dart:convert';

import 'package:budget_app/model/expense_item.dart';
import 'package:budget_app/model/pillow_item.dart';
import 'package:budget_app/model/saving_item.dart';
import 'package:budget_app/pages/add_pillow.dart';
import 'package:budget_app/pages/add_savings.dart';
import 'package:budget_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<ExpenseItem> expenses = [];

class AddExpensesPage extends StatefulWidget {
  const AddExpensesPage({
    super.key,
    required this.isChangePeriod,
    required this.expensesLenght,
  });
  final bool isChangePeriod;
  final int expensesLenght;

  @override
  State<AddExpensesPage> createState() => _AddExpensesPageState();
}

class _AddExpensesPageState extends State<AddExpensesPage> {
  TextEditingController nameController1 = TextEditingController();
  TextEditingController costController1 = TextEditingController();
  TextEditingController nameController2 = TextEditingController();
  TextEditingController costController2 = TextEditingController();
  TextEditingController nameController3 = TextEditingController();
  TextEditingController costController3 = TextEditingController();
  TextEditingController nameController4 = TextEditingController();
  TextEditingController costController4 = TextEditingController();
  TextEditingController nameController5 = TextEditingController();
  TextEditingController costController5 = TextEditingController();
  TextEditingController nameController6 = TextEditingController();
  TextEditingController costController6 = TextEditingController();
  TextEditingController currentNameController = TextEditingController();
  TextEditingController currentCostController = TextEditingController();
  List<ExpenseItem> newExpenses = [];
  int expenseCount = 1;
  @override
  void initState() {
    super.initState();
    int count = 0;
    for (var expense in expenses) {
      count++;
      expenseCount++;
      if (count == 1) {
        nameController1.text = expense.description!;
        costController1.text = expense.cost!.toStringAsFixed(0);
      } else if (count == 2) {
        nameController2.text = expense.description!;
        costController2.text = expense.cost!.toStringAsFixed(0);
      } else if (count == 3) {
        nameController3.text = expense.description!;
        costController3.text = expense.cost!.toStringAsFixed(0);
      } else if (count == 4) {
        nameController4.text = expense.description!;
        costController4.text = expense.cost!.toStringAsFixed(0);
      } else if (count == 5) {
        nameController5.text = expense.description!;
        costController5.text = expense.cost!.toStringAsFixed(0);
      } else if (count == 6) {
        nameController6.text = expense.description!;
        costController6.text = expense.cost!.toStringAsFixed(0);
      }
    }
    if (expenses.isNotEmpty) {
      expenseCount = expenseCount - 1;
    }
    for (var expense in expenses) {
      pillow.accumulated = pillow.accumulated! + expense.cost!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252730),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 60, 16, 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                    InkWell(
                      onTap: () {
                        if (nameController1.text.isNotEmpty &&
                            costController1.text.isNotEmpty &&
                            (expenses.isEmpty ||
                                expenses
                                        .firstWhere((element) =>
                                            element.description ==
                                            nameController1.text)
                                        .description ==
                                    null)) {
                          ExpenseItem expense = ExpenseItem();
                          expense.cost = double.parse(costController1.text);
                          expense.description = nameController1.text;
                          expenses.add(expense);
                        }
                        if (nameController2.text.isNotEmpty &&
                            costController2.text.isNotEmpty &&
                            expenses.firstWhere(
                                    (element) =>
                                        element.description ==
                                        nameController2.text, orElse: () {
                                  return ExpenseItem();
                                }).description ==
                                null) {
                          ExpenseItem expense = ExpenseItem();
                          expense.cost = double.parse(costController2.text);
                          expense.description = nameController2.text;
                          expenses.add(expense);
                        }
                        if (nameController3.text.isNotEmpty &&
                            costController3.text.isNotEmpty &&
                            expenses.firstWhere(
                                    (element) =>
                                        element.description ==
                                        nameController3.text, orElse: () {
                                  return ExpenseItem();
                                }).description ==
                                null) {
                          ExpenseItem expense = ExpenseItem();
                          expense.cost = double.parse(costController3.text);
                          expense.description = nameController3.text;
                          expenses.add(expense);
                        }
                        if (nameController4.text.isNotEmpty &&
                            costController4.text.isNotEmpty &&
                            expenses.firstWhere(
                                    (element) =>
                                        element.description ==
                                        nameController4.text, orElse: () {
                                  return ExpenseItem();
                                }).description ==
                                null) {
                          ExpenseItem expense = ExpenseItem();
                          expense.cost = double.parse(costController4.text);
                          expense.description = nameController4.text;
                          expenses.add(expense);
                        }
                        if (nameController5.text.isNotEmpty &&
                            costController5.text.isNotEmpty &&
                            expenses.firstWhere(
                                    (element) =>
                                        element.description ==
                                        nameController5.text, orElse: () {
                                  return ExpenseItem();
                                }).description ==
                                null) {
                          ExpenseItem expense = ExpenseItem();
                          expense.cost = double.parse(costController5.text);
                          expense.description = nameController5.text;
                          expenses.add(expense);
                        }
                        if (nameController6.text.isNotEmpty &&
                            costController6.text.isNotEmpty &&
                            expenses.firstWhere(
                                    (element) =>
                                        element.description ==
                                        nameController6.text, orElse: () {
                                  return ExpenseItem();
                                }).description ==
                                null) {
                          ExpenseItem expense = ExpenseItem();
                          expense.cost = double.parse(costController6.text);
                          expense.description = nameController6.text;
                          expenses.add(expense);
                        }
                        if (expenses.isNotEmpty) {
                          for (var expense in expenses) {
                            pillow.accumulated =
                                pillow.accumulated! - expense.cost!;
                          }
                        }
                        if ((expenseCount == 1 &&
                                nameController1.text.isNotEmpty &&
                                costController1.text.isNotEmpty) ||
                            (expenseCount == 2 &&
                                nameController1.text.isNotEmpty &&
                                costController1.text.isNotEmpty &&
                                nameController2.text.isNotEmpty &&
                                costController2.text.isNotEmpty) ||
                            (expenseCount == 3 &&
                                nameController1.text.isNotEmpty &&
                                costController1.text.isNotEmpty &&
                                nameController2.text.isNotEmpty &&
                                costController2.text.isNotEmpty &&
                                nameController3.text.isNotEmpty &&
                                costController3.text.isNotEmpty) ||
                            (expenseCount == 4 &&
                                nameController1.text.isNotEmpty &&
                                costController1.text.isNotEmpty &&
                                nameController2.text.isNotEmpty &&
                                costController2.text.isNotEmpty &&
                                nameController3.text.isNotEmpty &&
                                costController3.text.isNotEmpty &&
                                nameController4.text.isNotEmpty &&
                                costController4.text.isNotEmpty) ||
                            (expenseCount == 5 &&
                                nameController1.text.isNotEmpty &&
                                costController1.text.isNotEmpty &&
                                nameController2.text.isNotEmpty &&
                                costController2.text.isNotEmpty &&
                                nameController3.text.isNotEmpty &&
                                costController3.text.isNotEmpty &&
                                nameController4.text.isNotEmpty &&
                                costController4.text.isNotEmpty &&
                                nameController5.text.isNotEmpty &&
                                costController5.text.isNotEmpty) ||
                            (expenseCount == 6 &&
                                nameController1.text.isNotEmpty &&
                                costController1.text.isNotEmpty &&
                                nameController2.text.isNotEmpty &&
                                costController2.text.isNotEmpty &&
                                nameController3.text.isNotEmpty &&
                                costController3.text.isNotEmpty &&
                                nameController4.text.isNotEmpty &&
                                costController4.text.isNotEmpty &&
                                nameController5.text.isNotEmpty &&
                                costController5.text.isNotEmpty &&
                                nameController6.text.isNotEmpty &&
                                costController6.text.isNotEmpty)) {
                          addToSP();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const HomePage()),
                              (route) => false);
                        }
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Color(0xFF7082E1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Expenses within 1 month',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              getExpenses(),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
                child: InkWell(
                  onTap: () {
                    if ((expenseCount == 1 &&
                            nameController1.text.isNotEmpty &&
                            costController1.text.isNotEmpty) ||
                        (expenseCount == 2 &&
                            nameController1.text.isNotEmpty &&
                            costController1.text.isNotEmpty &&
                            nameController2.text.isNotEmpty &&
                            costController2.text.isNotEmpty) ||
                        (expenseCount == 3 &&
                            nameController1.text.isNotEmpty &&
                            costController1.text.isNotEmpty &&
                            nameController2.text.isNotEmpty &&
                            costController2.text.isNotEmpty &&
                            nameController3.text.isNotEmpty &&
                            costController3.text.isNotEmpty) ||
                        (expenseCount == 4 &&
                            nameController1.text.isNotEmpty &&
                            costController1.text.isNotEmpty &&
                            nameController2.text.isNotEmpty &&
                            costController2.text.isNotEmpty &&
                            nameController3.text.isNotEmpty &&
                            costController3.text.isNotEmpty &&
                            nameController4.text.isNotEmpty &&
                            costController4.text.isNotEmpty) ||
                        (expenseCount == 5 &&
                            nameController1.text.isNotEmpty &&
                            costController1.text.isNotEmpty &&
                            nameController2.text.isNotEmpty &&
                            costController2.text.isNotEmpty &&
                            nameController3.text.isNotEmpty &&
                            costController3.text.isNotEmpty &&
                            nameController4.text.isNotEmpty &&
                            costController4.text.isNotEmpty &&
                            nameController5.text.isNotEmpty &&
                            costController5.text.isNotEmpty) ||
                        (expenseCount == 6 &&
                                nameController1.text.isNotEmpty &&
                                costController1.text.isNotEmpty &&
                                nameController2.text.isNotEmpty &&
                                costController2.text.isNotEmpty &&
                                nameController3.text.isNotEmpty &&
                                costController3.text.isNotEmpty &&
                                nameController4.text.isNotEmpty &&
                                costController4.text.isNotEmpty &&
                                nameController5.text.isNotEmpty &&
                                costController5.text.isNotEmpty &&
                                nameController6.text.isNotEmpty &&
                                costController6.text.isNotEmpty) &&
                            expenseCount < 6) {
                      expenseCount++;

                      newExpenses.add(ExpenseItem(cost: 0));

                      setState(() {});
                    }
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.all(17),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: (expenseCount == 1 &&
                                    nameController1.text.isNotEmpty &&
                                    costController1.text.isNotEmpty) ||
                                (expenseCount == 2 &&
                                    nameController1.text.isNotEmpty &&
                                    costController1.text.isNotEmpty &&
                                    nameController2.text.isNotEmpty &&
                                    costController2.text.isNotEmpty) ||
                                (expenseCount == 3 &&
                                    nameController1.text.isNotEmpty &&
                                    costController1.text.isNotEmpty &&
                                    nameController2.text.isNotEmpty &&
                                    costController2.text.isNotEmpty &&
                                    nameController3.text.isNotEmpty &&
                                    costController3.text.isNotEmpty) ||
                                (expenseCount == 4 &&
                                    nameController1.text.isNotEmpty &&
                                    costController1.text.isNotEmpty &&
                                    nameController2.text.isNotEmpty &&
                                    costController2.text.isNotEmpty &&
                                    nameController3.text.isNotEmpty &&
                                    costController3.text.isNotEmpty &&
                                    nameController4.text.isNotEmpty &&
                                    costController4.text.isNotEmpty) ||
                                (expenseCount == 5 &&
                                    nameController1.text.isNotEmpty &&
                                    costController1.text.isNotEmpty &&
                                    nameController2.text.isNotEmpty &&
                                    costController2.text.isNotEmpty &&
                                    nameController3.text.isNotEmpty &&
                                    costController3.text.isNotEmpty &&
                                    nameController4.text.isNotEmpty &&
                                    costController4.text.isNotEmpty &&
                                    nameController5.text.isNotEmpty &&
                                    costController5.text.isNotEmpty) ||
                                (expenseCount == 6 &&
                                        nameController1.text.isNotEmpty &&
                                        costController1.text.isNotEmpty &&
                                        nameController2.text.isNotEmpty &&
                                        costController2.text.isNotEmpty &&
                                        nameController3.text.isNotEmpty &&
                                        costController3.text.isNotEmpty &&
                                        nameController4.text.isNotEmpty &&
                                        costController4.text.isNotEmpty &&
                                        nameController5.text.isNotEmpty &&
                                        costController5.text.isNotEmpty &&
                                        nameController6.text.isNotEmpty &&
                                        costController6.text.isNotEmpty) &&
                                    expenseCount < 6
                            ? const Color(0xFf7082E1)
                            : const Color(0xFF3b4265)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add more expense',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: (expenseCount == 1 &&
                                          nameController1.text.isNotEmpty &&
                                          costController1.text.isNotEmpty) ||
                                      (expenseCount == 2 &&
                                          nameController1.text.isNotEmpty &&
                                          costController1.text.isNotEmpty &&
                                          nameController2.text.isNotEmpty &&
                                          costController2.text.isNotEmpty) ||
                                      (expenseCount == 3 &&
                                          nameController1.text.isNotEmpty &&
                                          costController1.text.isNotEmpty &&
                                          nameController2.text.isNotEmpty &&
                                          costController2.text.isNotEmpty &&
                                          nameController3.text.isNotEmpty &&
                                          costController3.text.isNotEmpty) ||
                                      (expenseCount == 4 &&
                                          nameController1.text.isNotEmpty &&
                                          costController1.text.isNotEmpty &&
                                          nameController2.text.isNotEmpty &&
                                          costController2.text.isNotEmpty &&
                                          nameController3.text.isNotEmpty &&
                                          costController3.text.isNotEmpty &&
                                          nameController4.text.isNotEmpty &&
                                          costController4.text.isNotEmpty) ||
                                      (expenseCount == 5 &&
                                          nameController1.text.isNotEmpty &&
                                          costController1.text.isNotEmpty &&
                                          nameController2.text.isNotEmpty &&
                                          costController2.text.isNotEmpty &&
                                          nameController3.text.isNotEmpty &&
                                          costController3.text.isNotEmpty &&
                                          nameController4.text.isNotEmpty &&
                                          costController4.text.isNotEmpty &&
                                          nameController5.text.isNotEmpty &&
                                          costController5.text.isNotEmpty) ||
                                      (expenseCount == 6 &&
                                              nameController1.text.isNotEmpty &&
                                              costController1.text.isNotEmpty &&
                                              nameController2.text.isNotEmpty &&
                                              costController2.text.isNotEmpty &&
                                              nameController3.text.isNotEmpty &&
                                              costController3.text.isNotEmpty &&
                                              nameController4.text.isNotEmpty &&
                                              costController4.text.isNotEmpty &&
                                              nameController5.text.isNotEmpty &&
                                              costController5.text.isNotEmpty &&
                                              nameController6.text.isNotEmpty &&
                                              costController6
                                                  .text.isNotEmpty) &&
                                          expenseCount < 6
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.25),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          )),
        ],
      ),
    );
  }

  Widget getExpenses() {
    List<Widget> list = [];

    for (var i = 0; i < expenseCount; i++) {
      if (i == 0) {
        currentNameController = nameController1;
        currentCostController = costController1;
      } else if (i == 1) {
        currentNameController = nameController2;
        currentCostController = costController2;
      } else if (i == 2) {
        currentNameController = nameController3;
        currentCostController = costController3;
      } else if (i == 3) {
        currentNameController = nameController4;
        currentCostController = costController4;
      } else if (i == 4) {
        currentNameController = nameController5;
        currentCostController = costController5;
      } else if (i == 5) {
        currentNameController = nameController6;
        currentCostController = costController6;
      }

      list.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(
                  0xFF2E313C,
                ),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Expense ${i + 1}',
                          style: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                TextField(
                  cursorColor: Colors.grey,
                  controller: currentNameController,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16),
                  decoration: InputDecoration(
                    hintText: 'The name of the item',
                    hintStyle: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.25)),
                    filled: true,
                    fillColor: const Color(0xFF252730),
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
                    currentNameController.text = text;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: Colors.grey,
                  controller: currentCostController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16),
                  decoration: InputDecoration(
                    hintText: 'Price',
                    hintStyle: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.25)),
                    filled: true,
                    fillColor: const Color(0xFF252730),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  ),
                  onChanged: (text) {
                    currentCostController.text = text;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      );
      list.add(const SizedBox(
        height: 16,
      ));
    }
    return Column(
      children: list,
    );
  }
}

Future<void> addToSP() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('pillow', jsonEncode(pillow));
  prefs.setString('expenses', jsonEncode(expenses));
  prefs.setString('savings', jsonEncode(savings));
}

void getSP(Function() callBack) async {
  final prefs = await SharedPreferences.getInstance();
  final List<dynamic> jsonData1 =
      jsonDecode(prefs.getString('expenses') ?? '[]');
  final List<dynamic> jsonData2 =
      jsonDecode(prefs.getString('savings') ?? '[]');
  if (prefs.getString('pillow') != null) {
    Map<String, dynamic> userMap = jsonDecode(prefs.getString('pillow')!);
    pillow = PillowItem.fromJson(userMap);
  }

  expenses = jsonData1.map<ExpenseItem>((jsonList) {
    {
      return ExpenseItem.fromJson(jsonList);
    }
  }).toList();
  savings = jsonData2.map<SavingItem>((jsonList) {
    {
      return SavingItem.fromJson(jsonList);
    }
  }).toList();
  callBack();
}
