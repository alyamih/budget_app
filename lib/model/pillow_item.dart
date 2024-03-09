import 'package:budget_app/pages/add_pillow.dart';

class PillowItem {
  double? totalPillow;
  double? accumulated;
  EMonths? months;

  PillowItem({this.totalPillow, this.months, this.accumulated});

  factory PillowItem.fromJson(Map<String, dynamic> parsedJson) {
    return PillowItem(
        totalPillow: parsedJson['totalPillow'] ?? "",
        accumulated: parsedJson['accumulated'] ?? "",
        months: EMonths.values.byName(parsedJson['months']));
  }

  Map<String, dynamic> toJson() {
    return {
      "totalPillow": totalPillow,
      "accumulated": accumulated,
      "months": months!.name,
    };
  }
}
