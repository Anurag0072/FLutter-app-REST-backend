class ModelOrderId{
  ModelOrderId({
    required this.MemberNumber,
    required this.year,
    required this.month,
  });
  late final String MemberNumber;
  late final int year;
  late final int month;

  ModelOrderId.fromJson(Map<String, dynamic>Json) {
    MemberNumber = Json['MemberNumber'];
    year = Json['year'];
    month = Json['month'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['MemberNumber'] = MemberNumber;
    _data['year'] = year;
    _data['month'] = month;
    return _data;
  }
}