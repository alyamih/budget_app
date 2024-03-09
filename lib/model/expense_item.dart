class ExpenseItem {
  String? description;
  double? cost;

  ExpenseItem({this.description, this.cost});

  factory ExpenseItem.fromJson(Map<String, dynamic> parsedJson) {
    return ExpenseItem(
      description: parsedJson['description'] ?? "",
      cost: parsedJson['cost'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "cost": cost,
    };
  }
}
