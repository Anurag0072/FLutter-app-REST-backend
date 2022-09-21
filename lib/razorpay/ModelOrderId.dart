class ModelOrderId{
  ModelOrderId({
    required this.status,
    required this.msg,
    required this.Information,
  });
  late final int status;
  late final String msg;
  late final String Information;

  ModelOrderId.fromJson(Map<String, dynamic>Json) {
    status = Json['status'];
    msg = Json['msg'];
    Information = Json['Information'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['msg'] = msg;
    _data['Information'] = Information;
    return _data;
  }
}