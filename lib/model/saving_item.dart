class SavingItem {
  DateTime? date;
  double? cost;

  SavingItem({this.date, this.cost});

  factory SavingItem.fromJson(Map<String, dynamic> parsedJson) {
    return SavingItem(
        cost: parsedJson['cost'] ?? "",
        date: DateTime.tryParse(parsedJson['date']));
  }

  Map<String, dynamic> toJson() {
    return {
      "cost": cost,
      "date": date.toString(),
    };
  }
}
